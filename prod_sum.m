function [ ps ] = prod_sum( i2, r )
% Product-summation

    s = 1:r;
    ps = arrayfun(@(x) prod(i2(x:r)),s);
    ps = sum(ps);
end