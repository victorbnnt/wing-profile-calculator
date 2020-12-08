function[Extra1,Intra1,xext00,yext00,xint00,yint00] = PointJ(a,b,R)

Extra1 = [];
Intra1 = [];

for j = 0:1:180
    Extra1 = [Extra1,(R*exp(i*pi*j/180) + a +b*i)];
end;

for j = 0:1:180
    Intra1 = [Intra1,(R*exp(-i*pi*j/180) + a +b*i)];
end;

xext00=real(Extra1);
yext00=imag(Extra1);
xint00=real(Intra1);
yint00=imag(Intra1);