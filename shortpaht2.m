clc
clear all
t=[inf inf 23 inf 21
    inf inf inf 30 24
    inf inf inf 22 inf 
    inf inf 18 inf inf
    21 14 20 17 inf];
i=;
for j=1:1:5
    if i==j
        path=[i j];
    cost(:,:,j)=0;
    else
y=min(t(i,:));
[r,cw] = find(t==y);
t(cw,i)=inf;
[numRows,numCols] = size(cw);
if numRows>1  
    cw=cw(2);
else
    cw=cw;
end
if cw==j;
    path=[i cw];
    cost(:,:,j)=10*(y);
else x=min(t(cw,:));
     [g,k]=find(t==x);
t(k,cw)=inf;
if x==inf;
    t(i,cw)=inf;
    j=j-1;
    
else
     if k==j;
          path=[i cw k];
        cost(:,:,j)=10*(y+x);
          if t(i,j) t(i,cw)+t(cw,k)
                 path=[i j];
                 cost(:,:,j)=10*(t(i,j));
             end
         else v=min(t(k,:));
     [s,q]=find(t==v);
     t(q,k)=inf;
     if v==inf;
    t(k,q)=inf;
   j=j-1;
     else if q==j;
          path=[i cw k q];
         cost(:,:,j)=10*(y+x+v);
          if t(i,cw)+t(cw,j)<(y+x+v)
                  path=[i cw j];
                 cost(:,:,j)=10*(t(i,cw)+t(cw,j));
             end
     else a=min(t(q,:));
     [o,p]=find(t==a);
     if a==inf;
    t(q,p)=inf;
  j=j-1;
     else if p==j;
          path=[i cw k q p];
         cost(:,:,j)=10*(y+x+v+a);
          if t(i,cw)+t(cw,j)<(y+x+v+a)
                  path=[i cw j];
                 cost(:,:,j)=10*(t(i,cw)+t(cw,j));
             end
         if t(i,j)<(y+x+v+a) || t(i,j)<(y+x+v) || t(i,j)<(y+x)
              path=[i j];
             cost(:,:,j)=10*(t(i,j))
         end
     end
     end
     end
         
end

    end
    end
end

end
end

        