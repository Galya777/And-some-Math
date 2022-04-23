for i=1:6
for j=1:2
    a1(i, j)=2;
    a2(i, j)=-1;
end
end
A=[a1 a2 a1];
%find s
s=sum(sum(abs(A(i:6,j:6)):6))
