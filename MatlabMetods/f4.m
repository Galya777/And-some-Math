function [ output_args ] = f4( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=power(exp(1), x)*sin(x)-power(exp(1),-x)*cos(x);
m=m+1;
end
n=n+1;
end
end
% a=[-90.4 3.36 3.09 -2.49; -4.33 -5.09 9.74 1.65];
