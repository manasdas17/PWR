x = zeros(2^18, 1);
y = zeros(2^18, 1);
x(1) = 1; x(2 : 18) = 0;
y(1 : 18) = 1;
for i = 1 : 2^18 - 19
  x(i + 18) = mod(x(i + 7) + x(i), 2);
  y(i + 18) = mod(y(i + 10) + y(i + 7) + y(i + 5) + y(i), 2);
endfor

f1 = fir1(12, 1 / 16);
x_ = filter(f1, 1, upsample((x .- 0.5) .* 2, 16));
y_ = filter(f1, 1, upsample((y .- 0.5) .* 2, 16));

plot(xcorr(x_));
pause;

plot(xcorr(y_));
pause;

plot(fftshift(abs(fft(x_))));
pause;

plot(fftshift(abs(fft(y_))));
pause;

save x.mat x;
save y.mat y;
