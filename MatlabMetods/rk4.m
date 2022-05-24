function R=rk4(f,a,b,ya,n)
% Whod - f -djasna strana wywedena kato 'f'
% - a , b -granici na interwala
% - ya - nachalno uslowie y(a)
% - n - broi stypki
% Izhod - R=[t' y']
h=(b-a)/n;
t=zeros(1,n+1);
y=zeros(1,n+1);
t=a:h:b;
y(1)=ya;
for j=1:n
k1=h*feval(f,t(j),y(j));
k2=h*feval(f,t(j)+h/2,y(j)+k1/2);
k3=h*feval(f,t(j)+h/2,y(j)+k2/2);
k4=h*feval(f,t(j)+h,y(j)+k3);
y(j+1)=y(j)+(k1+2*k2+2*k3+k4)/6;
end
R=[t' y'];
