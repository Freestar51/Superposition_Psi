function [ ps ] = prod_sum( i2, r )
% Product-summation for m_r calculation in superposition psi function
% 
% Input parameters:
%               i2:     a vector of [i2]
%               r:      the index of target m_r
%
% Written by Giyoung Jeon
% Probabilistic Artificial Intelligence Lab at UNIST
% v1.0 April, 15th, 2015

    s = 1:r;
    ps = arrayfun(@(x) prod(i2(x:r)),s);
    ps = sum(ps);
end