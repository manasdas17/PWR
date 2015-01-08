a = [ 1, 1, 1, 1, 1, 1, -1, -1, 1, -1, 1, -1, 1, -1, -1, 1 ];
b = [ 1, 1, 1, -1, -1, 1, -1, -1, 1, 1, 1, -1, 1, -1, 1, 1 ];
c_psc = (1 + i ) .* [ a, a, a, -a, -a, a, -a, -a, a, a, a, -a, a, -a, a, a ];

save c_psc.mat c_psc

x_psc = xcorr(c_psc);
save x_psc.mat x_psc;
plot(abs(x_psc));
pause;

c_psc_fft = fft(c_psc);
save c_psc_fft.mat c_psc_fft
plot(fftshift(abs(c_psc_fft)));
pause;
