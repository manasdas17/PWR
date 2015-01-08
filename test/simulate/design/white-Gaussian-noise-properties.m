t = [0: 256];
z = randn(size(t));

f1 = fir1(12, 1 / 128);
z_u = filter(f1, 1, upsample(z, 128))
x = xcorr(z_u);
plot([-length(x) / 2 + 1: 1: length(x) / 2], x / max(x));
xlabel('t - t_0');
ylabel('A');
print('-deps', 'Passive-Weather-Radar-Theory-fig-11.eps');
pause;

X = 10 * log10(fftshift(abs(fft(z_u))));
plot([-length(X) / 2 + 1: length(X) / 2], X - max(X));
xlabel('f - f_0 (1 / F_s Hz)');
ylabel('A (dB)');
print('-deps', 'Passive-Weather-Radar-Theory-fig-12.eps');
pause;
