function [f, a, d]= Newton(x,y, p)% Newton interpolating polynomial
% input:
% x = independent variable
% y = dependent variable
% xx = value of independent variable at which
% interpolation is calculated
% output:
% f   (vector) of size 1xP. The result of interpolation respect to p.
%  [a] (vector) of size 1xN which is leading coefficients genereated by 
%       divided difference method.
%  [d] (matrix) of size NxN (triangular) which is the result of the 
%       divided difference method
n = length(x);
if length(y)~=n, error('x and y must be same length'); end
d(:,1)=y';
for j=2:n
    for i=j:n
        d(i,j)= ( d(i-1,j-1)-d(i,j-1)) / (x(i-j+1)-x(i));
    end
end
a = diag(d)';

Df(1,:) = repmat(1, size(p));
c(1,:) = repmat(a(1), size(p));
for j = 2 : n
   Df(j,:)=(p - x(j-1)) .* Df(j-1,:);
   c(j,:) = a(j) .* Df(j,:);
end
f=sum(c)

