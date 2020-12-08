function [Extrados,Intrados,Corde] = Joukowski(a,b,R);

Extrados = [];
Intrados = [];
maxI=0;
Iplus=0;
maxE=0;
Eplus=0;
minI=0;
Imoins=0;
minE=0;
Emoins=0;
Corde=[];

for j = 0:0.1:180
    Extrados = [Extrados,(R*exp(i*pi*j/180) + a +b*i)+(1/(R*exp( i*pi*j/180) + a +b*i))];
    Intrados = [Intrados,(R*exp(-i*pi*j/180)+ a +b*i)+(1/(R*exp(-i*pi*j/180) + a +b*i))];    
end;

[maxE,Eplus]=max(real(Extrados));
[minE,Emoins]=min(real(Extrados));
[maxI,Iplus]=max(real(Intrados));
[minI,Imoins]=min(real(Intrados));

Plus=Intrados(1:Iplus);
Moins=Intrados(Imoins:end);
Intrados=Intrados(1:Imoins);
Intrados=Intrados(Iplus:end);

temp=[];
for k=1:length(Plus)
   temp = [temp,Plus(length(Plus)+1-k)];
end
Plus=temp;

temp1=[];
for k=1:length(Moins)
   temp1 = [temp1,Moins(length(Moins)+1-k)];
end
Moins=temp1;

Extrados = [Plus,Extrados,Moins];

%temp2=numel(Extrados)-numel(Intrados);

% for k =1:1:temp2
% Intrados=[Intrados,Intrados(length(Intrados))];
% end

u=imag(Extrados(length(Extrados)));
v=-1*real(Extrados(length(Extrados)))+real(Extrados(1));
alpha = atan(u/v);

Extrados = Extrados*exp(i*alpha);
Intrados = Intrados*exp(i*alpha);

P=imag(Extrados(1));
Extrados=Extrados-P*i;
Intrados=Intrados-P*i;
Corde = [Extrados(1),Extrados(length(Extrados))];
