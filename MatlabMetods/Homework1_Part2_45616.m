function [x, y] = Homework1_Part2_45616(x, y)
one=(x-sin(y))/(x+sin(y))+(x+sin(y))/(x-sin(y));
p=(x-sin(y))*(x+sin(y));
S=atan(sqrt(abs(one)))+realpow(exp(1),p);
disp(S)
end