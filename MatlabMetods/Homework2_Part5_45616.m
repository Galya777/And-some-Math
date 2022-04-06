function [ x ] = Homework2_Part5_45616( x )
k=0; S=x;
while S>power(10, -10) && k<1000
    k=k+1;
    S=S+power(-1, k)*(power(x, 2*k+1)/factorial(2*k+1));
    
    display(S)
    fplot('mysin',[-pi,pi])
hold on
fplot('sin',[-pi,pi],'k.')
end

