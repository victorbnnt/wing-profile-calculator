
function [X,Y,Z,T]=tablenacabis(N)
i=1;
X=[0];
Y=[0];
Z=[0];
while i/N <= 1

X=[x,X,x];
Y=[-12/20*(0.2969*sqrt(x)-0.126*x-0.3516*x^2+0.2843*x^3-0.1015*x^4),Y,
12/20*(0.2969*sqrt(x)-0.126*x-0.3516*x^2+0.2843*x^3-0.1015*x^4)];
Z=[0,Z,0];
i=i+1;
end;
