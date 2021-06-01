x=[1,2,3];
h=[4,5];
l1=length(x);
l2=length(h);
X=[x zeros(1,l2-1)];
H=[h zeros(1,l1-1)];
N= [0,1,2,3];
subplot(1,2,1);
stem(N,X,'b');
hold on;
subplot (1,2,1);
stem(N,H,'y');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('x(t) & h(t)');

Y=zeros(1,length(X));
for i=1:length(X)
    Y(i)=X(1:i)*H(i:-1:1)';
end
subplot(1,2,2);
stem(N,Y,'g');
xlabel('Time');
ylabel('Amplitude');
title('y(t)');


    