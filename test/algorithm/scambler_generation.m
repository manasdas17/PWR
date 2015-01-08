load x.mat x;
load y.mat y;
n = 0;
for j = 1 : 2^18 - 1
  z(j) = mod(x(mod((j + n), 2^18)) + y(j), 2);
endfor
Z = -(z .- 0.5) .* 2;
S = zeros(38400, 1);
for j = 1 : 38400
  S(j) = Z(j) + i * Z(mod((j + 131072), 2^18));
endfor

save Z.mat Z;
save S.mat S;

f1 = fir1(12, 1 / 64);
S_ = filter(f1, 1, upsample(S, 64));

plot(abs(xcorr(S_)));
pause;

plot(fftshift(10 * log10(abs(fft(S_)))));
pause;
