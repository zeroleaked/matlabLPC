% 1 frame
% end to end

% Membaca sinyal suara dari file .wav dan mengubah menjadi mono
[speechSignal, Fs] = audioread('speech_4k.wav');
speechSignal = mean(speechSignal, 2);

reconstSignal = analysis_synthesis(speechSignal);

% y = transpose(y);

% Memainkan sinyal suara yang telah direkonstruksi
% sound(speechSignal, Fs);
pause(length(speechSignal)/Fs);
sound(reconstSignal,Fs);

audiowrite('out.wav',reconstSignal,Fs)
% filter 
% Membuat plot sinyal original dan hasil rekonstruksi
t = (0:length(speechSignal)-1) / Fs;
tr = (0:length(reconstSignal)-1) / Fs;
subplot(3,1,1); plot(t, speechSignal); xlabel('Time (s)'); ylabel('Amplitude');
title('Original Speech Signal');
subplot(3,1,2); plot(tr, reconstSignal); xlabel('Time (s)'); ylabel('Amplitude');
title('Reconstructed Speech Signal');
