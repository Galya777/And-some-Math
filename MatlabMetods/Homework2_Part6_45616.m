%Направете SM-файл за намиране реалните корените на квадратно уравнение0cbxax2 =++
%. Въвеждане на a, b, c в диалогов режим. Ако има комплексни корени ,
%то нека се печати съобщение.
f=msgbox('Enter quefients: ');
a= input('First queficient is: ');
b= input('Second queficient is:');
c= input('Third queficient is:');
if imag(a) ~= 0 || imag(b) ~= 0||imag(c) ~= 0
    f=msgbox('Only real numbers required!');
end
D=b*b-4*a*c;

if D>0
    x1=(-b+sqrt(D))/2*a;
    x2=(-b-sqrt(D))/2*a;
elseif D==0
    x=-b/2*a;
else 
    f=msgbox('No real solution!');
end  
    


