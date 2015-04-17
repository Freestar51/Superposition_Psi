% Plot result of psi function in [0,1]
%
% Variable parameters:
%               D:      input dataset
%               n:      input data dimension
%               gamma:  the number of hidden unit
%               k:      precision number
%
% Written by Giyoung Jeon
% Probabilistic Artificial Intelligence Lab at UNIST
% v1.1 April, 16th, 2015

D = [0:0.00001:1];
D = D(1:end-1);
n = 4;
gamma = 10;
k = 5;

p = zeros(1,length(D));
parfor idx = 1:length(D)
    p(idx) = psi_func(D(idx), n, gamma, k);
end

save(sprintf('./psi_result_n%d_gamma_%d.mat',n,gamma),'p');
figure;
set(gcf, 'position', [0 0 1080 1080]);
plot(D, p);
saveas(gcf, sprintf('./psi_result_n%d_gamma_%d.jpg',n,gamma),'jpg');
