function[Pts0,x0,y0,Tube01,Tube11] = Premiere(Point,Tube00,Tube10)

Pts0 = [];

%D�finition de points Z appartenant au cercle :
for j = 1:length(Point)
       Pts0 = [Pts0,(Point(j)-1)/(Point(j)+1)];
end;

%S�paration en partie imaginaire et r�elle pour le tracer :
x0=real(Pts0);
y0=imag(Pts0);

for j = 1:50
    for k = 1:length(Point) 
      Tube01(j,k)=x0(k);
      Tube11(j,k)=y0(k);
    end;
end;