%Programme principal%
%Nous prendrons l = 1 pour tous les calculs
%Le rayon sera déduit des coordonnées du centre du cercle


%Entrez Les coordonnées du centre du cercle (complexe) : Zc

a = input('--> Entrez abscisse du centre du cercle : ');
b = input('--> Entrez ordonnée du centre du cercle : ');

k = input('--> Entrez le parametre k (Compris entre 1 et 2): ');

[R] = Centre(a,b);
[Point,x00,y00,Tube00,Tube10,Z] = Point1(a,b,R)

%subplot(2,2,1)
%surf(Tube00,Tube10,Z);grid on;



[Pts,x0,y0,Tube01,Tube11] = Premiere(Point,Tube00,Tube10);

%subplot(2,2,2)
%surf(Tube01,Tube11,Z);grid on;

[Pts1,x1,y1,Tube02,Tube12] = Deuxieme(Pts,k,Tube01,Tube11);

%subplot(2,2,3)
%surf(Tube02,Tube12,Z);grid on;

[Pts2,x2,y2,Tubejx,Tubejy] = Troisieme(Pts1,Tube02,Tube12);

subplot(1,2,1)
plot(x2,y2);grid on;
subplot(1,2,2)
surf(Tubejx,Tubejy,Z,'linewidth',4);grid off;,axis off; shading interp;


