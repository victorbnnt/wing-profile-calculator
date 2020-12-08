function[Pts1,x1,y1] = Deuxieme(Pts)

Pts1 = [];

for j = 1:length(Pts)
    Pts1 = [Pts1,(Pts(j)*Pts(j))];
end;
x1 = real(Pts1);
y1 = imag(Pts1);