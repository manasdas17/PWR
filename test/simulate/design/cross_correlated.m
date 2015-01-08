x = rand(1, 512);
y = rand(1, 512);
z = xcorr(x);
%z = abs(fft(y));
plot(z);
pause;
