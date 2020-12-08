function [CYe,CYi] = Interpol(Extrados,Intrados)

A=real(Extrados);
B=imag(Extrados);
C=real(Intrados);
D=imag(Intrados);

CYe = polyfit(A,B,8);
CYi= polyfit(C,D,8);

% u=[];
% v=[];
% U=[];
% V=[];
% 
% for i = I(length(I))-0.028:0.001:I(1)
%     u=[u,i];
%     U=[U,i];
%     v=[v,Int(1)*i^8+Int(2)*i^7+Int(3)*i^6+Int(4)*i^5+Int(5)*i^4+Int(6)*i^3+Int(7)*i^2+Int(8)*i+Int(9)];
%     V=[V,Ext(1)*i^8+Ext(2)*i^7+Ext(3)*i^6+Ext(4)*i^5+Ext(5)*i^4+Ext(6)*i^3+Ext(7)*i^2+Ext(8)*i+Ext(9)];
% end
