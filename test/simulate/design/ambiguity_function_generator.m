
x = randn(size([1:256]));
Z = cmplxambiguity('true', 256, 1, x, x);
print('-deps', 'Passive-Weather-Radar-Theory-fig-10.eps');
pause;

x = mseq(2, 8, 0, 10)';
x(256) = 0;
Z = cmplxambiguity('true', 256, 1, x);
print('-deps', 'Passive-Weather-Radar-Theory-fig-13.eps');
pause;
