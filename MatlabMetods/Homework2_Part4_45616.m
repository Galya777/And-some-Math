function [S] = Homework2_Part4_45616(x, n)
k=0; S=1;
while k<n
    k=k+1;
S=S+power(x,k)/factorial(k);
end

%ans =  4.4817 x=e^1.5 n=10