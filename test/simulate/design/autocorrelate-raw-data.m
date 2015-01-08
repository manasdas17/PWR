c = read_cshort_binary('N4096R16MF884M8G80dB.16sc.dat', 4096);
%c = c .+ 0.5 + i * 0.5;
plot([real(c), imag(c)]);
pause;
plotfft(c, 10.66667e6);
pause;
x = abs(xcorr(c));
plot(x);
pause;
