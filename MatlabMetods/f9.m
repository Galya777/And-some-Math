function [ output_args ] = f9( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=(power(x,3)+sin(x))/(power(x,3)-cos(x))*sqrt(power(exp(1),x)+1);
m=m+1;
end
n=n+1;
end
end
% a=[0.64 6.34 0.32 -4.23; 1.19 3.23 1.54 0.43];

