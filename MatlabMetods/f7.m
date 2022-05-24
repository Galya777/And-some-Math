function [ output_args ] = f7( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=(sqrt(power(x,2)-1,3))/(abs(x)+3);
m=m+1;
end
n=n+1;
end
end
% a[0.23 3.89 -4.23 -7.25; 5.84 5.13 -0.89 3.55];
