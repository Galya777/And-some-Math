function [ output_args ] = f5( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=log(abs(x))*sin(pi*x);
m=m+1;
end
n=n+1;
end
end
% a=[0.33 0.95 7.12 -9.22; -0.64 3.76 1.34 -0.03];

