t = [0: 63];
x = exp(i * 2 * pi * 4 / 64 * t');
tau = [-64: 4: 64];
phi = [-0.16: .016: 0.16];

n_tau = length(tau);
n_phi = length(phi);
n_t   = length(t);
t_s   = t(2) - t(1);
n_x   = length(x);
X     = zeros(n_tau, n_phi);
x_c   = zeros(n_x);

for i_tau = 1: n_tau, n = round(tau(i_tau) / t_s);
  for i = 1: n_x
    if (i + i_tau <= n_tau)
      x_c(i) = x(i) * conj(x(i + i_tau));
    else
      x_c(i) = x(i) * conj(x(i));
    end
  end

end
