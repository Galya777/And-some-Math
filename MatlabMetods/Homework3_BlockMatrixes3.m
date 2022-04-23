for i=1:2
for j=1:6
    if i==1
    a1(i, j)=j;
    else
   a1(i,j)=-j;
    end
    a2(i,j)=4;
    a3(i, j)=5;
end
end
A=[a1; a2; a3];
%find m
m=min(power(A(i:6, j:6),3))