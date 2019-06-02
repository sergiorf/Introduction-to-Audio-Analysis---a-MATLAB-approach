fs = 16000; ts = 1/fs;
time = 0:ts:2;
xleft = cos(2*pi*250*time)';
xright = cos(2*pi*450*time)';
x = [xleft xright]
figure;
subplot(2, 1, 1); plot(time, x(:,1)); xlabel('Time (sec)'); title('Left channel');
subplot(2, 1, 2); plot(time, x(:,2)); xlabel('Time (sec)'); title('Right channel');
sound(x, fs)
