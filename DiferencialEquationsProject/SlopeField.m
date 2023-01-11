
function SlopeField
x=linspace(-7, 7, 20);
y=linspace(-7, 7, 20);
hold on;
axis([-8, 8, -8, 8]);
deltha=0.2;

for i=1:length(x)
    for j=1:length(y)
       a=f(x(i), y(j));
       nValue=deltha/sqrt(1+a^2);
       plot([x(i)-nValue, x(i)+nValue],[y(j)-nValue*a, y(j)+nValue*a],'r');
       plot(x(i), y(j), 'b.');
    end
end

    function z=f(x, y)
        z=(3+y)*sin(2*x+5);
    end
grid on;
hold on;
x0=0; y0=-1;
plot(x0, y0,'g*');
x=linspace(-7, 7, 20);
y=dsolve('Dy=(3+y)*sin(2*x+5)', 'y(x0)=y0', 'x');

plot(x, eval(y), 'k');
title('Поле от прави и решение на задачата на Коши за y'' = (3 + y) sin(2x + 5)');


end

