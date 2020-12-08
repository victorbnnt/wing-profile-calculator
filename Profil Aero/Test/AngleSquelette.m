function [ThetaE] = AngleSquelette(Squelette)

ThetaE = [];

for k=1:length(Squelette)
    ThetaE(1,k)= angle(Squelette(k));
    ThetaE(2,k) = abs(Squelette(k));
end
    