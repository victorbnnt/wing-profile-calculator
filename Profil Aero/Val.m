function [Ye,Yi] = Val(a,CYe,CYi)


Ye=CYi(1)*a^8+CYi(2)*a^7+CYi(3)*a^6+CYi(4)*a^5+CYi(5)*a^4+CYi(6)*a^3+CYi(7)*a^2+CYi(8)*a+CYi(9);
Yi=CYe(1)*a^8+CYe(2)*a^7+CYe(3)*a^6+CYe(4)*a^5+CYe(5)*a^4+CYe(6)*a^3+CYe(7)*a^2+CYe(8)*a+CYe(9);