% Usage:
% [x,iter_count] = find_root (initial guess)
% x is the result(fixed point)
% iter_count is the number of iterations
function [x,iter_count] = find_root(x0) 
g = @(x) ((x+10)^(1/2))/x; %can be any given function
iter_count=0;
x = g(x0);
while abs(g(x)-x) >=0.0001   
    x=g(x);
   iter_count = iter_count+1;
end

