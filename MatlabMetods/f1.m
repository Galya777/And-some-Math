function [ output_args ] = f1( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=power(x, 3)-2*power(x, 3)+sin(x)-4;
m=m+1;
end
n=n+1;
end
end
% a=[9.33 -4.01 8.19 2.64; 0.55 3.81 3.32 5.07];
