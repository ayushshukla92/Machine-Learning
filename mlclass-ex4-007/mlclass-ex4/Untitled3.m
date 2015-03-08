p=rand(1000000,1);
count=0;
for i=1:1000000
    q=p(i)+(1-p(i))*rand(1,1);
    a=p(i);
    b=q-p(i);
    c=1-q;
    if a+b>c & a+c>b & b+c>a
       count=count+1; 
    end
end
count/1000000