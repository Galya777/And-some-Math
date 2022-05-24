x = [1:5 7 10 11 13 17 18];%stojnosti za x: 1x11
y = [5 1 3 2 8 11 1 3 2 9 19];%stojnosti za y: 1x11
a = -1; b = 1;
n = 10;
x = cos( (2 * (1:n) - 1) / (2 * n) * pi);

% interpolation points: eqaully spaced
n = 50;
h = (b-a)/(n-1);
p = a + (0:n-1)*h;

% (1) f(x) = exp(x)
y = exp(x);
truth = exp(p);
f = Newton(x,y,p);

hold on;
plot(x,y,'ob');
plot(p,truth,'-b');
plot(p,f,'-r');
title('Newton Interpolation: Chebyshev nodes');
legend('samples', 'truth', 'interpolation');

% (2) f(x) = 1 / (1 + 25 * x^2)
figure;
y = 1 ./ (1 + 25 .* x.^2);
truth = 1 ./ (1 + 25 .* p.^2);
f= Newton(x,y,p);

hold on;
plot(x,y,'ob');
plot(p,truth,'-b');
plot(p,f,'-r');
title('Newton Interpolation: Chebyshev nodes');
legend('samples', 'truth', 'interpolation');