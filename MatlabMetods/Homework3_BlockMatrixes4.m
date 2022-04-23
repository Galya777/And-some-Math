for i=1:3
for j=1:3
a1(i,j)=-1;    
a2(i,j)=1;
a3(i,j)=2; 
if i==j 
a4(i, j)=3;
end
end
end
A=[a1 a2; a3 a4];
%%find s
s=sum(power(A(i:6, j:6),3):6)