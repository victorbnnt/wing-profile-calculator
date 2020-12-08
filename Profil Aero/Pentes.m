function [dext,dint] = Pentes(CYeprime,CYiprime)

dext=[8*CYeprime(1),7*CYeprime(2),6*CYeprime(3),5*CYeprime(4),4*CYeprime(5),3*CYeprime(6),2*CYeprime(7),CYeprime(8)];
dint=[8*CYiprime(1),7*CYiprime(2),6*CYiprime(3),5*CYiprime(4),4*CYiprime(5),3*CYiprime(6),2*CYiprime(7),CYiprime(8)];
