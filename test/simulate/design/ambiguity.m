t = [0:63]'; z = exp(i * 2 * pi * 4 / 64 * t);
tau = [-64:4:64]'; phi = [-0.16:0.016:0.16]';

X = amb(z, t, tau, phi);
mesh(phi, tau(2:32), 10 * log10(X(2:32,1:21))); %axis tight;
disp('Sine wave');
pause;

t = [0:63]'; z = rand(size(t));
disp(z);
tau = [-64:4:64]'; phi = [-0.16:0.016:16]';

X = amb(z, t, tau, phi);
disp(X);
mesh(phi(1:21), tau(2:32), 10 * log10(X(2:32, 1:21)));
disp('White noise');
pause;
