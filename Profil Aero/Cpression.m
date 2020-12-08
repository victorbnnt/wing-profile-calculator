function [Kpext,Kpint] = Cpression(M,l,I,Uo)

Penteext=[];
Penteint=[];
Angleext=[];
Angleint=[];
vext=[];
vint=[];
uint=[];
uext=[];
Kpext=[];
Kpint=[];

for t = I(length(I))-0.028:0.001:I(1)
    Penteext = [Penteext,M(1)*t^7+M(2)*t^6+M(3)*t^5+M(4)*t^(4)+M(5)*t^3+M(6)*t^2+M(7)*t*M(8)];
    Penteint = [Penteint,l(1)*t^7+l(2)*t^6+l(3)*t^5+l(4)*t^(4)+l(5)*t^3+l(6)*t^2+l(7)*t*l(8)];
end;

g=(Penteext-Penteint)/2;

for t = 1:length(Penteext)
    Angleext = [Angleext,(180/pi)*atan(t)];
    Angleint = [Angleint,(180/pi)*atan(t)];
end

for t = 1:length(Penteext)
    vext=[vext,Uo*g(t)];
    vint=[vint,-Uo*g(t)];
end

for t = 1:length(Penteext)
    uext=[uext,vext(t)/(tan(Angleext(t)))-Uo];
    uint=[uint,vint(t)/(tan(Angleint(t)))-Uo];
end

for t = 1:length(Penteext)
    Kpext=[Kpext,-2*uext/Uo];
    Kpint=[Kpint,-2*uint/Uo];
end
