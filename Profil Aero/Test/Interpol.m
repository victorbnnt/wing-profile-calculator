function [CYe,CYi] = Interpol(Extrados,Intrados)

A=real(Extrados);
B=imag(Extrados);
C=real(Intrados);
D=imag(Intrados);

CYe = polyfit(A,B,4);
CYi= polyfit(C,D,4);