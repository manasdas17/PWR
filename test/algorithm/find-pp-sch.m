load c_psc.mat c_psc;
f = fopen('../../test/simulate/design/N4096R08MF834M8G80dB.16sc.dat', 'r');
v = fread(f, Inf, 'short');
fclose(f);
cv = v(1 : 2 : end) + v(2 : 2 : end) * j;
plot(abs(xcorr(c_psc, cv)));
pause;
