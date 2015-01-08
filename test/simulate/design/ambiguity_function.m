function X = amb(z,t,tau,phi)
% Radar Ambiguity function
%
% X = AMB(z,t,tau,phi)
%
% z   : Analytic input signal. Values for z outside time t are
%       assummed to be zero.
% t   : Timebase for the input signal (in seconds). This must
%       be a vector of equally spaced numbers.
% tau : Vector of time delays (in seconds) to evaluate X at
% phi : Vector of Doppler shifts (in Hz) to evaluate X at
%
% X   : Resulting radar ambiguity function. This is a real
%       matrix of size (length(tau),length(phi))
%
% Example of use:
%   t = 0:63]' z = exp(i*2*pi*4/64*t)
%   tau = -64:4:64]' phi = -0.16:0.016:0.16]'
%
%   X = amb(z,t,tau,phi)
%   surf(phi,tau,10*log10(X)) axis tight
%
% This code implements equation 4-2a (pg 59), from
% "Radar Signals: An Introduction to Theory and Application"
% by C E Cook and M Bernfeld, 1967, Academic Press
%
% Maurice Ringer, 1998
error(nargchk(4,4,nargin))
%z = z(:);
%t = t(:);
%tau = tau(:);
%phi = phi(:);
t_sp = t(2) - t(1);
nt = length(t);
ntau = length(tau);
nphi = length(phi);
if nt~=length(z)
  error('length of arguments z and t must be the same');
end
X = zeros(ntau,nphi);
for itau = 1: ntau,
  n = round(tau(itau) / t_sp);
  if (abs(n) < nt);
    if (n >= 0);
      temp = [z(1: nt - n)] .* [conj(z(n + 1: nt))];
      X(itau,:) = temp.' * [exp(-i * 2 * pi * t(1:nt - n) * phi')];
    else
      temp = [z(-n + 1: nt)] .* [conj(z(1: nt + n))];
      X(itau,:) = temp.' * [exp(-i * 2*pi * t(-n + 1: nt) * phi')];
    end
  end
end
X = abs(X).^2;
X = X / max(max(X));

