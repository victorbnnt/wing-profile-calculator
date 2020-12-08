function[yex,yix,absic] = Lignemoy(x)

a=0.8;
E=0.1;
u=1;

yex=[];
yix=[];
absic=[];

for i=-x:0.1:x
  yex=[yex,E*a*(1-(i/a)^2+u*sqrt(1-(i/a)^2))];
  yix=[yix,E*a*(1-(i/a)^2-u*sqrt(1-(i/a)^2))];
  absic=[absic,i];
end;
