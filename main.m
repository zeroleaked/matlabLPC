% Top level params
frameLength = 80;
order = 10;
samplingFrequency = 4000;

% Membaca sinyal suara dari file .wav dan mengubah menjadi mono
[speechSignal, Fs] = audioread('elektro.wav');
speechSignal = mean(speechSignal, 2);
speechSignal = resample(speechSignal, samplingFrequency, Fs);
Fs = samplingFrequency;

% Menghitung jumlah frame
numFrames = ceil(length(speechSignal)/frameLength);

% inits
lpcCoeffs = zeros(order+1, numFrames);
residue = zeros(frameLength, numFrames);

% Framing
input_frame = zeros(frameLength*numFrames, 1); % zero padding
input_frame(1:length(speechSignal)) = speechSignal;
input_frame = reshape(input_frame, frameLength, numFrames);

% Menganalisis masing-masing frame
for i = 1:numFrames
    % Mencari koefisien LPC untuk frame yang sedang dianalisis
    [lpcCoeffs(:,i), residue(:,i)] = lpc_autocorr(input_frame(:,i), order);
end

reconstructed = zeros(frameLength, numFrames);
% Melakukan inversi filter untuk mendapatkan sinyal suara yang telah direkonstruksi
for i = 1:numFrames
    reconstructed(:,i) = iirFilter(lpcCoeffs(:,i), residue(:,i));
end

% Membuat plot sinyal original dan hasil rekonstruksi
figure()
t = (0:frameLength*numFrames-1) / Fs;
subplot(3,1,1); plot(t, input_frame(:)); xlabel('Time (s)'); ylabel('Amplitude');
title('Original Speech Signal');
subplot(3,1,2); plot(t, reconstructed(:)); xlabel('Time (s)'); ylabel('Amplitude');
title('Reconstructed Speech Signal');
subplot(3,1,3); plot(t, residue(:)); xlabel('Time (s)'); ylabel('Amplitude');
title('Error');

% Residual analysis
figure()
input_power = input_frame.^2;
input_power_frame = mean(input_power);
subplot(3,1,1);
plot(1:numFrames, input_power_frame);
title('input power');

residual_power = residue.^2;
residual_power_frame = mean(residual_power);
subplot(3,1,2);
plot(1:numFrames, residual_power_frame);
title('residual power');

power_ratio = residual_power_frame ./ input_power_frame * 100;
subplot(3,1,3);
plot(1:numFrames, power_ratio);
ytickformat('percentage');
title('residual power / input power');