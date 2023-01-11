%функция, която чертае фазов портрет на системата относно равновесната
%точка
function phasePortrait

A=[2,2;-4,-2];
b=[-4; 6];

%find point

eqPoint=A\(-b);

plot(eqPoint(1), eqPoint(2), 'b*');

axis([eqPoint(1)-5, eqPoint(1)+5,eqPoint(2)-5, eqPoint(2)+5]);
hold on;
grid on;

[T, D]=eig(A);
xx=-10:1:10;
%този код няма да се изпълни, тъй като ние имаме комплексни собствени
%стойност, т.е. нямаме прави
if imag(D(1, 1))==0
plot(eqPoint(1)+T(1,1)*xx, eqPoint(2)+T(2,1)*xx, 'k')
plot(eqPoint(1)+T(1,2)*xx, eqPoint(2)+T(2,2)*xx, 'k')
end

x=eqPoint(1)-4:2:eqPoint(1)+4
y=eqPoint(2)-4:2:eqPoint(2)+4

[X, Y]=meshgrid(x,y);
tmax=50;
for i=1:length(x)
    for j=1:length(y)
        [T1, Z1]=ode45(@rhs, [0, tmax], [X(i,j), Y(i,j)]);      
        [T2, Z2]=ode45(@rhs, [0, -tmax], [X(i,j), Y(i,j)]);
        plot(Z1(:,1),Z1(:,2),'r');
        plot(Z2(:,1),Z2(:,2),'g');
    end 
end
    
DX=A(1,1)*X+A(1,2)*Y+b(1);
DY=A(2,1)*X+A(2,2)*Y+b(2);


%тангенциални вектори
d=sqrt(DX.^2+DY.^2);
  quiver(X,Y, DX./d, DY./d,0.3, 'y') 
  
    function z=rhs(t,y)
        z=A*y+b;
    end



end