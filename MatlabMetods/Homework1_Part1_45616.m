%Finding Z
Z=atan(nthroot(x-sin(x), 3)/sqrt(1-x*x)-(abs(x)*sqrt(1-x*x))/nthroot(x-sin(x), 3));
%RESULT Z=-0.901419550139569 in format long  Z =

        %-0.901419550139569

%Finding T
T=(power(sin(y)+sin(2*y)+sin(3*y),4)/1+(sin(y)+sin(2*y)+sin(3*y)/1+power(exp(1), x))+sqrt(1+(sin(y)+sin(2*y)+sin(3*y)/1+power(exp(1), x))));
%T =

          %9.00683049937252

%Finding W
W=power(1+(log(y)/x+tan(y)), (1+ (x+tan(y)/log(y))));
%W =

        % -0.946540919010409 -      1.44899018500558i
        
%Finding H
h1=sqrt(cos(2*y)+sin(4*y)+sqrt(power(exp(1), x)+power(exp(1), -x)));
h2=power(power(exp(1), x)+power(exp(1), -x), 3)*power(cos(2*y)+sin(4*y)-2,2);
H=h1/h2;

%H =

   % 1.9822


   %Find A
   A=nthroot(x*power(1+x,2)*power(1+2*x,3)+nthroot((x*power(1+x,2)*power(1+2*x,3))/log(abs(cot(y))),3),5);
%A =

    %1.6117
