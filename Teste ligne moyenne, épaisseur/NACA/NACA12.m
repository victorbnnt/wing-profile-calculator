function[profil] = NACA12(a)

ye=[];
yi=[];
ab=[];
Cp=[];


for x = 0:0.005:(a)
    ye=[ye,12/20*(0.2969*sqrt(x)-0.126*x-0.3516*x^2+0.2743*x^3-0.1015*x^4)];
    yi=[yi,-12/20*(0.2969*sqrt(x)-0.126*x-0.3516*x^2+0.2743*x^3-0.1015*x^4)];
    Cp=[Cp,-(6/(5*pi))*((0.1485/sqrt(x))*log((1-sqrt(x))/(1+sqrt(x)))-(log((1-x)/x))*(0.126+0.7032*x-0.8529*x^2+0.406*x^3)-0.412+0.6499*x-0.406*x^2)];
    ab=[ab,x];
end;


subplot(3,1,1)
plot(ab,ye,ab,yi,ab,Cp);grid on;title('Profil (courbe extrados+courbe intrados');
subplot(3,1,2)
plot(ab,(ye+yi)/2);grid on;title('Squelette');
subplot(3,1,3)
plot(ab,(ye-yi)/2);grid on;title('Epaisseur');