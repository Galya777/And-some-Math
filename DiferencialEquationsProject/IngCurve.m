function IngCurve 

axis([-10, 10, -10, 10]);
hold on;
grid on;

[x0, y0]=ginput(1);
plot(x0, y0, 'r*');

dsolve('Dy=(3+y)*sin(2*x+5)', 'y(x0)=y0', x);

if x0>0
    x=linspace(0, 10);
else
    x=linspace(-10, 0);
end

plot(x, eval(y));

end

