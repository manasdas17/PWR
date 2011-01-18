fs = 1280
xt = sin(2 * pi * 55 * [0:(1 / fs):(127 / fs)])
xr = [zeros(1, 10) xt(1:118)]
tau = [0:(1 / fs):(20 / fs)]
phi = [(-fs / 2):(fs / 127):(fs / 2)]
M = match(xr, xt, fs, tau, phi)
mesh(phi, tau, M), axis tight
pause;
