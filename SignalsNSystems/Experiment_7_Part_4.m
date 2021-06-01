%Part 4
u=[];
j=1;
for i=-10:0.01:10
             if (i>=0)
                u(j)=1;
             else
                u(j)=0;
             end
             j=j+1;
        end
t=-10:0.01:10;
x=[];
h=[];
j=1;
for i=1:length(t);
      x(i)=exp(-2*t(i)).*u(j);
      j=j+1;
      if (t(i)<=2 && t(i)>=0)
          h(i)=2;
      elseif (t(i)<=4 && t(i)>=2)
          h(i)=4;
      elseif (t(i)<=8 && t(i)>=4)
          h(i)=6;
      else
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
axis([-1,10,0,10]);

l1=length(x);
l2=length(h);
X=[x zeros(1,l2-1)];
H=[h zeros(1,l1-1)];

y=zeros(1,length(X));
for i=1:length(X)
    y(i)=(X(1:i)*H(i:-1:1)')./100;
end
T=-20:0.01:20;
subplot(2,2,3);
plot(T,y);
xlabel('Time');
ylabel('Amplitude');
title('y(t)');
