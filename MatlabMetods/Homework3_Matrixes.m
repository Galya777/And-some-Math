%A1
for i =1:7 
 for j=1:7
 if i>=2 && j>=2 && j<=6 && i<=6
 if i==j A1(i, j)=2; 
 elseif i==2 && j==6         
  A1(i, j)=7;
 else A1(i, j)=0;
 end
 else A1(i,j)=1;
 end
 end
end
disp(A1)

%A2
for i =1:7 
 for j=1:7
 if i==j A2(i, j)= i+1;
 elseif i==j-1 A2(i, j)=1;
 elseif j==i-1 A2(i, j)=-1;
 elseif i==1 && j==7 A2(i, j)=5;
 else A2(i,j)=0;
 end
end
end
disp(A2)

%A3
for i =1:7 
 for j=1:7
 if i==7-j+1 A3(i, j)= i+1;
 elseif i==1 && j==1 A3(i, j)=-1;
 elseif i==7 && j==7 A3(i, j)=1;
 else A3(i,j)=0;
 end
end
end
disp(A3)

%A4
for i =1:7 
 for j=1:7
 if i==j A4(i, j)= 4;
 elseif i==1 && j==7 A4(i, j)=9;
 elseif i==7 && j==1 A4(i, j)=9;
 else A4(i,j)=3;
 end
end
end
disp(A4)

%A5
for i =1:7 
 for j=1:7
 if j==7 A5(i, j)= 1;
 elseif i==1 || i==7 A5(i, j)= j;
 elseif j==1 && i<7 A5(i, j)= i;
 elseif i==7-j || i+j==9 A5(i, j)= 7;
 else A5(i,j)=0;
 end
end
end
disp(A5)


%A6
for i =1:7 
 for j=1:7
 if i==4 && j==4 A6(i, j)=5;
 elseif i==j A6(i, j)= 1;
 elseif i==7-j+1 A6(i, j)=-1;
 else A6(i,j)=0;
 end
 end
end
disp(A6)

%A7
for i =1:7 
 for j=1:11
 if i==j A7(i, j)= 2;
 elseif i==1 || j==1 || j==11 || i==7 A7(i, j)= 1;
 else A7(i,j)=0;
 end
 end
end
disp(A7)

%A8
for i =1:7 
 for j=1:11
 if i==j || i==7 A8(i, j)= 0;
 else A8(i,j)=1;
 end
 end
end
disp(A8)

%A9
for i =1:7 
 for j=1:11
 if i==j && i<=3 A9(i, j)= 1;
 elseif j==i+1 && j>=5 A9(i, j)= 1;
 else A9(i,j)=0;
 end
 end
end
disp(A9)

%A10
for i =1:7 
 for j=1:11
 if i==j A10(i, j)= 1;
 elseif j==i+4 A10(i, j)= 1;
 else A10(i,j)=0;
 end
 end
end
disp(A10)