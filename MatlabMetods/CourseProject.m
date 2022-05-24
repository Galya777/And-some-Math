x = [1:5 7 10 11 13 17 18];%stojnosti za x: 1x11
y = [5 1 3 2 8 11 1 3 2 9 19];%stojnosti za y: 1x11
figure
t=0:1:20;
plot(x,y,'yo')
hold on
newton =Newton(x, y, 5);
values=polyval(newton, t);
yy=spline(t,  t, values);
plot(x,y,'g',t, yy, 'r')
legend('danni','spline','myPolinom')
title('Newton comparison')
hold off