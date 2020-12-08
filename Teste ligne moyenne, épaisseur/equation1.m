function[ab,ye,yi] = equation(a,E,u)

ab=[];
yi=[];
ye=[];

for k=-a:0.01:a
    ye=[ye,E*a*((1-(k^2/a^2))+u*sqrt(1-(k^2/a^2)))];
    yi=[yi,E*a*((1-(k^2/a^2))-u*sqrt(1-(k^2/a^2)))];
    ab=[ab,k];
end;

subplot(3,1,1)
plot(ab,ye,ab,yi);grid on;title('Forme du profil')
subplot(3,1,2)
plot(ab,(ye+yi)/2,'linewidth',2);grid on;title('Squelette')
subplot(3,1,3)
plot(ab,(ye-yi)/2,'linewidth',2);grid on;title('Epaisseur')