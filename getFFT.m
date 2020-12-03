
filePath = '~/Desktop/fmri_acq3_macMic.mp3';

[s,fs] = audioread(filePath);

%documentation needed!
% define what this function does exactly

N = length(s);
hN = floor(N/2)+1;
freq = [0:hN-1]/N*fs;

w = hann(N);
s = w .* s;

mX = abs(fft(s));
mX(1) = 0;

figure('name',filePath)
plot(freq,mX(1:hN))
xlim([0,2000])

datacursormode on
