function[Point,x00,y00,Tube00,Tube10,Z] = PointKT(a,b,R)

Point = [];
Tube00=[];
Tube10=[];
Z=[];
m=0;

for j = 0:10:360
    Point = [Point,(R*exp(i*pi*j/180) + a +b*i)];
end;

x00=real(Point);
y00=imag(Point);

for j = 1:50
    for k = 1:length(Point) 
      Tube00(j,k)=x00(k);
      Tube10(j,k)=y00(k);
      Z(j,k)=m;
    end;
    m=m+1;
end;

