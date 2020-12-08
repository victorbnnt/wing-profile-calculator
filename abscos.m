function [x,y] = abscos(L)
x=[];
y=[];


for i=1:0.1:L
    x=[x,i];
    y=[y,abs(cos(i))];
end

