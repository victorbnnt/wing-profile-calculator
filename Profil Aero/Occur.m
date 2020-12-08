function [O] = Occur(x,m)

O=0;

for k = 1:length(x)
  if (x(k)==m)
      O=O+1;
  else
  end
end
    