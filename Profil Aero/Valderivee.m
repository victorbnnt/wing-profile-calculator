function [Yeprime,Yiprime] = Valderivee(a,CYeprime,CYiprime)


Yeprime=CYiprime(1)*a^7+CYiprime(2)*a^6+CYiprime(3)*a^5+CYiprime(4)*a^4+CYiprime(5)*a^3+CYiprime(6)*a^2+CYiprime(7)*a+CYiprime(8);
Yiprime=CYeprime(1)*a^7+CYeprime(2)*a^6+CYeprime(3)*a^5+CYeprime(4)*a^4+CYeprime(5)*a^3+CYeprime(6)*a^2+CYeprime(7)*a+CYeprime(8);