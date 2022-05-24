function [ output_args ] = f6( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}= power(exp(1), power(x, 2)+x+1);
m=m+1;
end
n=n+1;
end
end
% a=[-4.53 -2.12 -6.54 -3.21; 3.43 7.43 -0.25 1.64];

