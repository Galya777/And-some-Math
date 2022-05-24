function H=heun(f,a,b,ya,n)
% Whod - f -djasna strana wywedena kato 'f'
% - a , b -granici na interwala
% - ya - nachalno uslowie y(a)
% - n - broi stypki
% Izhod - H=[t' y']
5
h=(b-a)/n;
t=zeros(1,n+1);
y=zeros(1,n+1);
t=a:h:b;
y(1)=ya;
for j=1:n
s1=feval(f,t(j),y(j));
s2=feval(f,t(j+1),y(j)+h*s1);
y(j+1)=y(j)+(h/2)*(s1+s2);
end
H=[t' y'];
