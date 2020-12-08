function [CYeprime,CYiprime] = Derivee(CYe,CYi)

CYeprime=[8*CYe(1),7*CYe(2),6*CYe(3),5*CYe(4),4*CYe(5),3*CYe(6),2*CYe(7),CYe(8)];
CYiprime=[8*CYi(1),7*CYi(2),6*CYi(3),5*CYi(4),4*CYi(5),3*CYi(6),2*CYi(7),CYi(8)];
