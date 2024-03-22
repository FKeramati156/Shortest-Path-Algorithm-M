clc
clear all
t=[inf 9 inf
4 5 1];
i=1;
j=3;
y=min(t(i,:));
[r,c] = find(t == y)
if c==j
    path=[i c]
    cost=10*(y)
else x=min(t(c,:))
     [g,k]=find(t==x)
     if k==j
         path=[i c k]
         cost=10*(y+x)
     end
end
        

