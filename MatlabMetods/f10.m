function [ output_args ] = f10( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=asin(cos(power(x,2)));
m=m+1;
end
n=n+1;
end
end
% a[pi 2.2*pi -2*pi 0.3*pi; 3*pi -pi 0.1*pi 5*pi];

