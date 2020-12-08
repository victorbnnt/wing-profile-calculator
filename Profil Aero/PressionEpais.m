function [xtemp,CpplusEt] = PressionEpais(de,di,Extrados,Intrados)

a=de(1);a1=di(1);
b=de(2);b1=di(2);
c=de(3);c1=di(3);
d=de(4);d1=di(4);
e=de(5);e1=di(5);
f=de(6);f1=di(6);
g=de(7);g1=di(7);
h=de(8);h1=di(8);

xtemp=[];
CpplusEt=[];
CpmoinsEt=[];

xplus=real(Extrados(1));
xmoins=real(Extrados(length(Extrados)));

xplus1=real(Intrados(1));
xmoins1=real(Intrados(length(Intrados)));



CpplusE=[];
CpmoinsE=[];

for k=5:length(Extrados)
    A=(-2/pi)*(-log(xplus-(real(Extrados(k))))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)+f)+g)+h)-xplus*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)+f)+g)-(1/2)*xplus^2*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)+f)-(1/4)*xplus^4*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)-(1/3)*xplus^3*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)-(1/5)*xplus^5*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)-(1/6)*xplus^6*(a*(real(Extrados(k)))+b)-(a*xplus^7)/7);
    B=(-2/pi)*(-log(xmoins-(real(Extrados(k))))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)+f)+g)+h)-xmoins*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)+f)+g)-(1/2)*xmoins^2*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)+f)-(1/4)*xmoins^4*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)-(1/3)*xmoins^3*((real(Extrados(k)))*((real(Extrados(k)))*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)+d)+e)-(1/5)*xmoins^5*((real(Extrados(k)))*(a*(real(Extrados(k)))+b)+c)-(1/6)*xmoins^6*(a*(real(Extrados(k)))+b)-(a*xmoins^7)/7);
    C=A-B;
    xtemp=[xtemp,real(Extrados(k))];
    CpplusEt=[CpplusEt,C];
end
% CpplusE=complex(xtemp,CpplusEt);

% for k = 1:length(Intrados)
%     A=(-2/pi)*(-log(xplus-k)*(k*(k*(k*(k*(k*(k*(a*k+b)+c)+d)+e)+f)+g)+h)-xplus*(k*(k*(k*(k*(k*(a*k+b)+c)+d)+e)+f)+g)-(1/2)*xplus^2*(k*(k*(k*(k*(a*k+b)+c)+d)+e)+f)-(1/4)*xplus^4*(k*(k*(a*k+b)+c)+d)-(1/3)*xplus^3*(k*(k*(k*(a*k+b)+c)+d)+e)-(1/5)*xplus^5*(k*(a*k+b)+c)-(1/6)*xplus^6*(a*k+b)-(a*xplus^7)/7);
%     B=(-2/pi)*(-log(xmoins-k)*(k*(k*(k*(k*(k*(k*(a*k+b)+c)+d)+e)+f)+g)+h)-xmoins*(k*(k*(k*(k*(k*(a*k+b)+c)+d)+e)+f)+g)-(1/2)*xmoins^2*(k*(k*(k*(k*(a*k+b)+c)+d)+e)+f)-(1/4)*xmoins^4*(k*(k*(a*k+b)+c)+d)-(1/3)*xmoins^3*(k*(k*(k*(a*k+b)+c)+d)+e)-(1/5)*xmoins^5*(k*(a*k+b)+c)-(1/6)*xmoins^6*(a*k+b)-(a*xmoins^7)/7);
%     C=A-B;
%     xtemp=[xtemp,real(Intrados(k))];
%     CpmoinsEt=[CpmoinsEt,C];
% end
% CpmoinsE=complex(xtemp,CpmoinsEt);

    