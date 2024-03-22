clc
clear all
d=[0 inf 23 inf 21
    inf 0 inf 30 24
    inf inf 0 22 inf 
    inf inf 18 0 inf
    21 14 20 17 0];
p=[0 0 3 0 5
    0 0 0 4 5
    0 0 0 4 0
    0 0 3 0 0
    1 2 3 4 0];
for k=1:1:5
 for   i=1:1:5
  for  j=1:1:5
    if d(i,j)<= d(i,k)+d(k,j)
        d(i,j)=d(i,j);
    else
        d(i,j)=d(i,k)+d(k,j);
        p(i,j)=k;
    end
end
 end
end
%disp(d)%d is shortest path between i,j%
sumd=0;
 for   i=1:1:5
  for j=1:1:5
    if d(i,j)~=inf
        sumd=sumd+d(i,j);
    end
end
 end
% disp(sumd)%sum all d without inf%
for n=1:1:5
 for   i=1:1:5
  for  j=1:1:5
    if i~=j & j~=n
        D(i,j,n)=d(i,n)+d(n,j);
    else
        D(i,j,n)=d(i,j);
    end
end
 end
end
%disp(D)%D is shortest path between i,j with location cs in n-if n=1 means cs is in 1%
sumD=0;
for n=1:1:5
 for   i=1:1:5
  for  j=1:1:5
    if  D(i,j,n)~=inf
        sumD=sumD+D(i,j,n);
    
    end
end
 end
 sum(n)=sumD;
 sumD=0;
end
%disp(sum)%sum od matrix shortest path with location%
f=inf;
dtime=zeros(1,5);
for i=1:1:5
    dtime(n)=sum(n)-sumd
    if dtime(n)<f
        f=dtime(n);
        NCs=n;
    end
end
disp(dtime)%1*5 all divation time from short time --dtim(1,1) means if cs locate in 1 whta happend to time travel
              %and how many times more than time of shortest path
disp(f)%loweerest dtime because of location cs%
disp(NCs)%which node is best location cs with lowerest divation time%

    
