function[Test] = Dim(Pts2)

Test = [];
for i = 1:length(Pts2)
    for j = 1:length(Pts2)
    Test(i,j) = Pts2(i);
end;
end;