% Plot result of psi function in [0,1]

D = [0:0.0000001:1];
D = D(1:end-1);
n = 2;
gamma = 10;
k = 5;

p = zeros(1,length(D));
parfor idx = 1:length(D)
    p(idx) = psi_func(D(idx), n, gamma, k);
end

plot(D, p);