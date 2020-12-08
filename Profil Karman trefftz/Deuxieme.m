function[Pts1,x1,y1,Tube02,Tube12] = Deuxieme(Pts,k,Tube01,Tube11)

Pts1 = [];

for j = 1:length(Pts)
    Pts1 = [Pts1,(Pts(j)^k)];
end;
x1 = real(Pts1);
y1 = imag(Pts1);

for j = 1:50
    for k = 1:length(Pts) 
      Tube02(j,k)=x1(k);
      Tube12(j,k)=y1(k);
    end;
end;
