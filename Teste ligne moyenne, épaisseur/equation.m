function[ab,ye,yi,Kpe,Kpi,Kpee,Kpie] = equation(a)

ab=[];
yi=[];
ye=[];
Kpe=[];
Kpi=[];
Kpee=[];
Kpie=[];

for k=-a:0.01:a
    ye=[ye,a*((k/a)*(1-(k^2/a^2))+(1-k/a)*sqrt(1-(k^2/a^2)))];
    yi=[yi,a*((k/a)*(1-(k^2/a^2))-(1-k/a)*sqrt(1-(k^2/a^2)))];
    ab=[ab,k];
end;

for m = 1:length(ye)
    Kpe=[Kpe,-tan((acos(ab(m)/a))/2)-3*sin(2*acos(ab(m)/a))];
    Kpi=[Kpi,tan((acos(ab(m)/a))/2)+3*sin(2*acos(ab(m)/a))];
    Kpee=[Kpee,-2];
    Kpie=[Kpie,-2];
end;
subplot(3,1,1)
plot(ab,ye,ab,yi);grid on;title('Forme du profil')
%subplot(4,1,2)
%plot(ab,yi);grid on;
subplot(3,1,2)
plot(ab,(ye+yi)/2,'linewidth',2);grid on;title('Ligne moyenne ou squelette')
subplot(3,1,3)
plot(ab,(ye-yi)/2,'linewidth',2);grid on;title('Epaisseur ou habillage')
