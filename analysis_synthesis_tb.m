% 1 frame
% end to end

% Membaca sinyal suara dari file .wav dan mengubah menjadi mono
[speechSignal, Fs] = audioread('speech_4k.wav');
speechSignal = mean(speechSignal, 2);

[reconstSignal, residue] = analysis_synthesis(speechSignal);
residue = reshape(residue.',[], 1);

% y = transpose(y);

% Memainkan sinyal suara yang telah direkonstruksi
% sound(speechSignal, Fs);
pause(length(speechSignal)/Fs);
% sound(reconstSignal,Fs);
sound(residue, Fs);

audiowrite('out.wav',reconstSignal,Fs)
% filter 
% Membuat plot sinyal original dan hasil rekonstruksi
t = (0:length(speechSignal)-1) / Fs;
tr = (0:length(reconstSignal)-1) / Fs;
subplot(3,1,1); plot(t, speechSignal); xlabel('Time (s)'); ylabel('Amplitude');
title('Original Speech Signal');
subplot(3,1,2); plot(tr, reconstSignal); xlabel('Time (s)'); ylabel('Amplitude');
title('Reconstructed Speech Signal');
subplot(3,1,3); plot(tr, residue); xlabel('Time (s)'); ylabel('Amplitude');
title('Residual');

figure();

subplot(2,1,1);
hold on
residue_power = power(residue, 2);
input_power = power(speechSignal, 2);
i = floor(length(input_power)/80);
residue_power_frame = reshape(residue_power(1:i*80), 80, []);
residue_power_frame = mean(residue_power_frame, 1);
plot(1:i, residue_power_frame);
input_power_frame = reshape(input_power(1:i*80), 80, []);
input_power_frame = mean(input_power_frame, 1);
plot(1:i, input_power_frame);
hold off
legend("residual", "input");
xlabel("frame");
ylabel('power');
title("Power")

subplot(2,1,2);
power_ratio = residue_power_frame./input_power_frame*100;
plot(1:i, power_ratio);
xlabel("frame");
ylabel('residual to input');
ytickformat('percentage');