%find m
for i=1:3
for j=1:3
a3(i,j)=2;
a4(i, j)=3;
if i==j 
a1(i,j)=1; 
a2(i,j)=4;
end
end
end
A=[a1 a2; a3 a4];
%%find m
m=max(sum(power(A(i:6,j:6),2)))