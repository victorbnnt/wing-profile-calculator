function [Extrados,Intrados,xextrados,yextrados,xintrados,yintrados] = Joukowski(a,b,R);

Extrados = [];
Intrados = [];

for j = 0:1:180
    Extrados = [Extrados,(R*exp(i*pi*j/180) + a +b*i)+(1/(R*exp( i*pi*j/180) + a +b*i))];
    Intrados = [Intrados,(R*exp(-i*pi*j/180)+ a +b*i)+(1/(R*exp(-i*pi*j/180) + a +b*i))];    
end;

xextrados=real(Extrados);
yextrados=imag(Extrados);
xintrados=real(Intrados);
yintrados=imag(Intrados);
