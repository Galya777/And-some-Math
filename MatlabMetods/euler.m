function E=euler(f,a,b,ya,n)
% Whod - f -djasna strana wywedena kato 'f'
% - a , b -granici na interwala
% - ya - nachalno uslowie y(a)
% - n - broi stypki
% Izhod - E=[t' y']
h=(b-a)/n;
t=zeros(1,n+1);
y=zeros(1,n+1);
t=a:h:b;
y(1)=ya;
for j=1:n
y(j+1)=y(j)+h*feval(f,t(j),y(j));
end
E=[t' y'];
end
