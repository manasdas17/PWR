function M = match(xr, xt, fs, tau, phi, win)
% Matched filter radar receiver
%
% M = MATCH(xr,xt,fs,tau,phi,win)
%
% xr : Received signal.
% xt : Transmitted signal. This must be the same length
%       as xr.
% fs : Sampling frequency of xr and xt (in Hz).
% tau : Vector of time delays (in secs) at which to
%       evaluate the matched filter.
%       This should be an evenly spaced vector with the
%       spacing between elements being a multiple of 1/fs.
%       If tau is the empty matrix, or is not specified,
%       the default is 0:1/fs:length(xr)/fs].
% phi : Vector of frequency shifts (in Hz) at which to
%       evaluate the matched filter.
%       If phi is the empty matrix, or is not specified,
%       the default is -fs:fs/50:fs].
% win : What window function is used when processing.
%       If not specified or is the empty matrix, no window
%       (effective rectangular or boxcar window) is used.
%       If win is a vector of the same length as xr and xt,
%       it is used as the window function.
%
%       win can be one of the following strings, in which
%       case the window function is calculated and used:
%       'hanning', 'hamming', 'blackman', 'boxcar'
%
% The result of the matched filter, M, is a matrix of
% length(tau) rows and length(phi) columns. The rows
% correspond to the possibility of targets at the various
% ranges which (through the bandwidth used and radar
% configuration) correspond to the values in tau. The
% columns correspond to the radial velocity of these targets
% which correspond to the frequency shifts phi.
%
% Example of use:
%   fs = 1280
%   xt = sin(2*pi*55* 0:1/fs:127/fs])
%   xr = [zeros(1,10) xt(1:118)]
%   tau = [0:1/fs:20/fs]
%   phi = [-fs/2:fs/4:fs/2]
%   M = match(xr,xt,fs,tau,phi)
%   mesh(phi,tau,M), axis tight
%
% By Maurice Ringer, 1998
error(nargchk(3, 6, nargin));
x_n = length(xr);
if x_n ~= length(xt);
  error('xt and xr must be the same length')
end
if nargin < 4, tau = [];  end
if nargin < 5, phi = [];  end
if nargin < 6, win = [];  end
if isempty(tau), tau = [0:1 / fs:nx / fs]; end
if isempty(phi), phi = [-fs:fs / 50:fs];   end
if isempty(win), win = ones(x_n, 1);        end
if ischar(win)
  win = lower(win);
  if strcmp(win, 'hanning')
    win = 0.5 * (1 - cos(2 * pi* [1:x_n]'/(x_n + 1)));
  elseif strcmp(win, 'hamming')
    win = 0.54 - 0.46 * cos(2 * pi* [0:x_n - 1]'/(x_n - 1));
  elseif strcmp(win, 'blackman')
    win = (0.42 - 0.5 * cos(2 * pi * (0:x_n - 1) / (x_n - 1)) + ...
      0.08 * cos(4 * pi * (0:x_n - 1) / (x_n - 1)))';
  elseif strcmp(win, 'boxcar')
    win = ones(x_n, 1);
  else
    warning('Funny window argument - no window used');
    win = ones(x_n, 1);
  end
end
tau_n = length(tau);
phi_n = length(phi);
xr = xr(:) .* win;
xt = xt(:) .* win;
phi = phi(:);
ts = 1 / fs;
M = zeros(tau_n, phi_n);
for tau_i = 1: tau_n,
  n = round(tau(tau_i) * ts)
  if (abs(n) < x_n)
    if (n >= 0)
      temp = xr(1 + n: x_n) .* conj(xt(1: x_n - n));
      temp(length(temp) + 1: x_n) = zeros(-length(temp) - 1 + x_n);
      t = [n * ts: ts: (x_n - 1) * ts];
      t = [(-x_n / 2 + 1) * ts: ts : (x_n / 2 - 0) * ts];
      disp(t);
    else
      temp = xr(1: x_n + n) .* conj(xt(1 - n: x_n));
      t = [0: ts: (x_n + n - 1) * ts];
    end
    temp = xr .* xt;
    M(tau_i, :) = (exp(-i * 2 * pi * phi .* t') .* temp);
  end
end
M = abs(M).^2;
M = M / max(max(M));

