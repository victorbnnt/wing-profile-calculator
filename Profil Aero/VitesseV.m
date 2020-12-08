function [VitessevVExtrados,VitessevVIntrados] = VitesseV(Extrados,Intrados,CYeprime,CYiprime,Uo)

A=round(real(Extrados(1))*100)/100;
B=round(real(Extrados(length(Extrados)))*100)/100;
VitessevVIntrados=[];
VitessevVExtrados=[];
x=[];
YEeprime = [];
YEiprime = [];

for k = B:0.01:A
      x=[x,k];
      [Yeprime,Yiprime] = Valderivee(k,CYeprime,CYiprime);
      YEeprime = [YEeprime,Uo*Yeprime];
      YEiprime = [YEiprime,Uo*Yiprime];
end

VitessevVIntrados=complex(x,YEeprime);
VitessevVExtrados=complex(x,YEiprime);
      