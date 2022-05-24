function s=trapr1(f,a,b,M)
% the function calculates aproximate integral
%enter: f - function, a, b - interval, M - number of
%subintervals
h=(b-a)/M;
s=0;
for k=1:(M-1)
x=a+h*k;
s=s+feval(f,x);
end
s=(feval(f,a)+feval(f,b))*h/2+h*s;
end

