function [Pts2,x2,y2,Tubejx,Tubejy] = Troisieme(Pts1,Tube02,Tube12)

Pts2 = [];

for j = 1:length(Pts1)
    Pts2 = [Pts2,(2+2*Pts1(j))/(1-Pts1(j))];
end;

x2=real(Pts2);
y2=imag(Pts2);

for j = 1:50
    for k = 1:length(Pts1) 
      Tubejx(j,k)=x2(k);
      Tubejy(j,k)=y2(k);
    end;
end;