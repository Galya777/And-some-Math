function [ output_args ] = f3( x_arr )
m=1; n=1;
for n=1:size(x_arr, 2)
for m=1:size(x_arr, 1)
 x= x_arr(m, n);
output_args{m, n}=sqrt(1+(sqrt(power(abs(x)),3)+1));
m=m+1;
end
n=n+1;
end
end
% a=[-1.54 0.49 3.11 2.99; 4.05 -5.85 3.72 0.11];
