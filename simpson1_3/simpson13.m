f=input('Enter function :');
n=input('Enter n :');
a=input('Enter a :');
b=input('Enter b :');
X=zeros(n+1);
h=(b-a)/n;
for i=1:n+1
    X(i)=f(a);
    a=a+h;
end
sum=X(1)+X(n+1);
for i=2:2:n
    sum=sum+(4*X(i));
    if i+1<=n
        sum=sum+(2*X(i+1));
    end
end
Ans=(h/3)*sum

