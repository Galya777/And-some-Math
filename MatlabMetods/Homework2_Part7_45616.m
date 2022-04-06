function [ x ] = Homework2_Part7_45616( x )
if x>=-4*pi && x<=-pi
    y=sin(x);
elseif x>-pi && x<=0
   y=3*power((x/pi+1),2);
elseif x>0 && x<=5
  y=3*power(exp(1),-x);
 end 
  
  display(y)
  fplot('myFunc', [-4*pi, 5])


