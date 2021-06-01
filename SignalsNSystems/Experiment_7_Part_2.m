%Part 2
t=-5:0.01:5;
x=[];
h=[];
for i=1:length(t);
      if (t(i)<=2 && t(i)>=-2)
          x(i)=1;
          if(t(i)<=1 && t(i)>=-1)
              h(i)=1;
          else
              h(i)=0;
          end
      else
          x(i)=0;
          h(i)=0;
      end
end
subplot(2,2,1);
plot(t,x);
xlabel('Time');
ylabel('Amplitude');
title('x(t)');
axis([-5,5,0,1.5]);
subplot(2,2,2);
plot(t,h);
xlabel('Time');
ylabel('Amplitude');
title('h(t)');
axis([-5,5,0,1.5]);

l1=length(x);
l2=length(h);
X=[x zeros(1,l2-1)];
H=[h zeros(1,l1-1)];

y=zeros(1,length(X));
for i=1:length(X)
    y(i)=(X(1:i)*H(i:-1:1)').*0.01;
end
T=-10:0.01:10;
subplot(2,2,3);
plot(T,y);
xlabel('Time');
ylabel('Amplitude');
title('y(t)');