%Programme principal%
%Nous prendrons l = 1 pour tous les calculs
%Le rayon sera d�duit des coordonn�es du centre du cercle


clc;
disp('------ ALLURE DE PROFIL D AILE D AVION ------')
disp('               Press key')
pause;
clc;
disp('')
choix = input('Quel type de profil voulez-vous tracer ? \n \n    1.Joukowski          2.Karmann-Trefftz          3.NACA \n \n');
clc;
if (choix==1) 
    %PROFIL DE JOUKOWSKI%
    disp('----- Profil de Joukowski -----')
    
a = input('\n   --> Entrez abscisse du centre du cercle (entre 0 et -1): ');
b = input('\n   --> Entrez ordonn�e du centre du cercle (entre 0 et 1): ');
Uo = input('\n   --> Entrez la vitesse � linfini amont (m.s-1): ');

[R] = CentreJ(a,b);
[Extrados,Intrados,Corde] = Joukowski(a,b,R);
[CYe,CYi] = Interpol(Extrados,Intrados);
[CYeprime,CYiprime] = Derivee(CYe,CYi);
[Squelette,Epaisseur] = SqueletteEpaisseur(Extrados,Intrados,CYe,CYi);
[ThetaE] = AngleSquelette(Squelette);
[VitessevVExtrados,VitessevVIntrados] = VitesseV(Extrados,Intrados,CYeprime,CYiprime,Uo);
[de,di] = Pentes(CYeprime,CYiprime);

%[Kpext,Kpint]=Cpression(de,di,xextrados,Uo);
% fprintf('\n');
% disp(['L �quation de lextrados du profil est : (',num2str(G(1)),')*x^8 + (',num2str(G(2)),')*x^7 + (',num2str(G(3)),')*x^6 + (',num2str(G(4)),')*x^5 + (',num2str(G(5)),')*x^4 + (',num2str(G(6)),')*x^3 + (',num2str(G(7)),')*x^2 + (',num2str(G(8)),')*x + (',num2str(G(9)),').']);
% fprintf('\n');
% disp(['L �quation de lintrados du profil est : (',num2str(H(1)),')*x^8 + (',num2str(H(2)),')*x^7 + (',num2str(H(3)),')*x^6 + (',num2str(H(4)),')*x^5 + (',num2str(H(5)),')*x^4 + (',num2str(H(6)),')*x^3 + (',num2str(H(7)),')*x^2 + (',num2str(H(8)),')*x + (',num2str(H(9)),').']);
 fprintf('\n');
 disp(['Equation de pente de lextrados : dext(x) = (',num2str(de(1)),')*x^7 + (',num2str(de(2)),')*x^6 + (',num2str(de(3)),')*x^5 + (',num2str(de(4)),')*x^4 + (',num2str(de(5)),')*x^3 + (',num2str(de(6)),')*x^2 + (',num2str(de(7)),')*x + (',num2str(de(8)),').']);
 fprintf('\n');
 disp(['Equation de pente de lintrados : dint(x) = (',num2str(di(1)),')*x^7 + (',num2str(di(2)),')*x^6 + (',num2str(di(3)),')*x^5 + (',num2str(di(4)),')*x^4 + (',num2str(di(5)),')*x^3 + (',num2str(di(6)),')*x^2 + (',num2str(di(7)),')*x + (',num2str(di(8)),').']);
% hold on
plot(Extrados,'Color',[0.4,0.4,0.6],'LineWidth',2);
grid on;
hold on
plot(Intrados,'Color',[0.4,0.4,0.2],'LineWidth',2);
plot(Corde,'Color','k','LineWidth',2);
%plot(xintrados,Kpint);
else
    %PROFIL DE KARMAN TREFFTZ%
    if (choix==2)
        disp('----- Profil de Karmann-Trefftz -----')
        
a = input('\n  --> Entrez abscisse du centre du cercle : ');
b = input('\n  --> Entrez ordonn�e du centre du cercle : ');
k = input('\n  --> Entrez le parametre k (Compris entre 1 et 2): ');

[R] = CentreKT(a,b);
[Point,x00,y00,Tube00,Tube10,Z] = PointKT(a,b,R);

[Pts,x0,y0,Tube01,Tube11] = Premiere(Point,Tube00,Tube10);
[Pts1,x1,y1,Tube02,Tube12] = Deuxieme(Pts,k,Tube01,Tube11);
[Pts2,x2,y2,Tubejx,Tubejy] = Troisieme(Pts1,Tube02,Tube12);

subplot(1,2,1)
plot(x2,y2);grid on;
subplot(1,2,2)
surf(Tubejx,Tubejy,Z,'linewidth',4);grid off;,axis off; shading interp;
    else
        if (choix==3)
            %PROFIL NACA%
        else
        end
    end
    
end


