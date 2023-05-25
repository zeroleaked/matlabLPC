% mengatur frameLength, overlapFactor, dan order
frameLength = 80;
overlapFactor = 0;
order = 10;

% Membaca sinyal suara dari file .wav dan mengubah menjadi mono
[speechSignal, Fs] = audioread('speech_4k.wav');
speechSignal = mean(speechSignal, 2);

% Menghitung jumlah frame
numFrames = ceil(length(speechSignal)/(frameLength*(1-overlapFactor)));

% Inisiasi matrix untuk menyimpan koefisien LPC untuk setiap frame
lpcCoeffs = zeros(numFrames, order+1);

% Inisiasi array error
errorSignalNew = zeros(numFrames, frameLength);

reconstructedSignalNew = zeros(numFrames, frameLength);

% Menganalisis masing-masing frame
for i = 1:numFrames
    % Mengekstrak sampel suara pada frame sekarang
    startIdx = round((i-1)*frameLength*(1-overlapFactor))+1;
    endIdx = startIdx + frameLength - 1;
    if endIdx > length(speechSignal)
        endIdx = length(speechSignal);
        startIdx = endIdx - frameLength + 1;
    end

    currentFrame = speechSignal(startIdx:endIdx);
    % Mencari koefisien LPC untuk frame yang sedang dianalisis
    lpcCoeffs(i,:) = lpc_autocorr(currentFrame, order);
    
    % Mencari nilai error untuk masing-masing frame
    frameError = my_conv(lpcCoeffs(i,:), currentFrame);
    frameError = frameError(1:80); % menetapkan panjang frame error menjadi 80
    errorSignalNew(i,:) = transpose(frameError);
end

% Melakukan inversi filter untuk mendapatkan sinyal suara yang telah direkonstruksi
for i = 1:numFrames
    reconstructedSignalNew(i,:) = iirFilter(lpcCoeffs(i,:), errorSignalNew(i,:));
end
k=1;
for i = 1:numFrames
    for j = 1:frameLength
        reconstSignalNewOneD(k) = reconstructedSignalNew(i,j);
        k=k+1;
    end
end
reconstSignalNewOneD = transpose(reconstSignalNewOneD);

% Memperbaiki overlap antar frame
startIdx = round(frameLength*(1-overlapFactor))+1;
endIdx = length(speechSignal);
reconstructedSignalNew(startIdx:endIdx) = reconstructedSignalNew(startIdx:endIdx) + errorSignalNew(startIdx:endIdx);

error = reshape(errorSignalNew',[],1);

sound(speechSignal, Fs);
pause(length(speechSignal)/Fs);
sound(reconstSignalNewOneD,Fs);

% Membuat plot sinyal original dan hasil rekonstruksi
t = (0:length(speechSignal)-1) / Fs;
tr = (0:length(reconstSignalNewOneD)-1) / Fs;
subplot(3,1,1); plot(t, speechSignal); xlabel('Time (s)'); ylabel('Amplitude');
title('Original Speech Signal');
subplot(3,1,2); plot(tr, reconstSignalNewOneD); xlabel('Time (s)'); ylabel('Amplitude');
title('Reconstructed Speech Signal (MATLAB Function)');
subplot(3,1,3); plot(tr, error); xlabel('Time (s)'); ylabel('Amplitude');
title('Error');

% Residual analysis
figure()
input_power = speechSignal.^2;
input_power_frame = zeros(length(error), 1);
input_power_frame(1:length(input_power)) = input_power;
input_power_frame = reshape(input_power_frame, frameLength, numFrames);
input_power_frame = mean(input_power_frame);
subplot(3,1,1);
plot(1:numFrames, input_power_frame);
title('input power');

residual_power = error.^2;
residual_power_frame = reshape(residual_power, frameLength, numFrames);
residual_power_frame = mean(residual_power_frame);
subplot(3,1,2);
plot(1:numFrames, residual_power_frame);
title('residual power');

power_ratio = residual_power_frame ./ input_power_frame * 100;
subplot(3,1,3);
plot(1:numFrames, power_ratio);
ytickformat('percentage');
title('residual power / input power');

sgtitle('baseline, 10 pole, no circ buffer');
