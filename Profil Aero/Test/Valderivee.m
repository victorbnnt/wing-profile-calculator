function [Yeprime,Yiprime] = Valderivee(a,CYeprime,CYiprime)


Yeprime=CYiprime(1)*a^3+CYiprime(2)*a^2+CYiprime(3)*a+CYiprime(4);
Yiprime=CYeprime(1)*a^3+CYeprime(2)*a^2+CYeprime(3)*a+CYeprime(4);