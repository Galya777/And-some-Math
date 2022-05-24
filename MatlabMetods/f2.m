function [ output_args ] = f2( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=(power(exp(1), x)-x)/(power(exp(1), x)+x);
m=m+1;
end
n=n+1;
end
end
% a=[9.32 0.21 -9.89 3.11; 0.54 4.99 5.01 -0.03];


