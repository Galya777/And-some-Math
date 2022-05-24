function yLagrange = Lagrange( x, y, x0 )
% x is the vector of abscissas.
% y is the matching vector of ordinates.
% x0 represents the target to be interpolated
% y0 represents the solution from the Lagrange interpolation
yLagrange = 0;
n = length(x);
for j = 1 : n
    t = 1;
    for i = 1 : n
        if i~=j
            t = t * (x0-x(i))/(x(j)-x(i));
        end
    end
    yLagrange = yLagrange + t*y(j);
end

