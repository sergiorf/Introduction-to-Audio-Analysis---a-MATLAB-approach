fs = 16000; ts = 1/fs;
time = 0:ts:5
freqs = [250 550 900];
xs = zeros(length(freqs), length(time));
for i = 1:length(freqs)
    xs(i, :) = cos(2*pi*freqs(i)*time);
end
x = sum(xs);
x = x ./ max(abs(x));
figure; plot(time, x);axis([0 time(end) -1 1]);
xlabel('Time (sec)');
ylabel('Signal Ampl.');
title('A simple audio signal');
sound(x, fs)
