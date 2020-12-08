function [Squelette,Epaisseur] = SqueletteEpaisseur(Extrados,Intrados,CYe,CYi)

A=round(real(Extrados(1))*100)/100;
B=round(real(Extrados(length(Extrados)))*100)/100;
Squelette = [];
Epaisseur = [];
x=[];
YEe=[];
YEi=[];

for k = B:0.01:A
      x=[x,k];
      [Ye,Yi] = Val(k,CYe,CYi);
      YEe=[YEe,Ye];
      YEi=[YEi,Yi];
end

Squelette = complex(x,(YEe+YEi)/2);
Epaisseur = complex(x,(YEe-YEi)/2);
