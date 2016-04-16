function [x,n] = newton(x0)
% Usage:
% [x,n] = newton(initialization)
% x is the result
% n is # of iterations
f = @(x) 40*x.^1.5-875*x+35000;
fder = @(x) 60*x.^0.5-875;
x = x0+1;
n=0;
while abs(x-x0) > 10.^(-2)
    x0 = x;
    x = x0 - f(x0)/fder(x0);
    n = n+1;
end