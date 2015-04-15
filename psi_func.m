function [ p ] = psi_func( d, n, gamma, k )
% Psi function of Kolmogorov's Superposition theorem
%

    if k <= 0
        error('error: k > 0');
    end
    if gamma < 2*n + 2
        error('error: gamma >= 2n+2');
    end
    
    i = arrayfun(@str2num, dec2base(floor(d*gamma^k), gamma, k));
    
    i1 = i >= (gamma - 1);
    i2 = i >= (gamma - 2);
    i1(1) = 0; i2(1) = 0;
    i_tilda = i - (gamma - 2)*i1;
    r_idx = (1:k) - 1;
    m = i1.*(1 + arrayfun(@(x) prod_sum(i2,x), r_idx));
    
    pow_n = repmat(n,1,k).*(1:k);
    p = sum(i_tilda.*2.^(-m).*gamma.^(-(pow_n-m-1)/(n-1)));
    
end