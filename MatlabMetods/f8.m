function [ output_args ] = f8( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=1/1+(1+x)/1-power(x,2);
m=m+1;
end
n=n+1;
end
end
% a=[-5.84 9.84 0.23 1.59; -9.25 0.25 1.54 0.43];

