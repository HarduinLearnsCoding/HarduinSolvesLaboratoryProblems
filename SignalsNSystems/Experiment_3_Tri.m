%Triangular Function------------------------------------------------------

t=[];
y=[];
j=1;
for i= -100:0.1:100
    t(j)=i;
    if(i<-10)
        y(j)=0;
    elseif(i<=0 && i>=-10)
        y(j)=i+10;
    elseif(i<=10 && i>=0)
        y(j)=10-i;
    else
        y(j)=0;
    end
    j=j+1;
end



%Shifting
A=sin(t+pi/2);
subplot(2,2,1);
plot(t,y,'b--');
axis([-100,100,-5,15]);
% hold on;
% subplot(2,2,1);
% plot(t,A,'b');
% hold off;
xlabel('Time');
ylabel('Amplitude');
title('Shifting');


%Scaling
B=sin(2*t);
subplot(2,2,2);
plot(t,y,'g--');
axis([-100,100,-5,15]);
% hold on;
% subplot(2,2,2);
% plot(t,B,'g');
% hold off;
xlabel('Time');
ylabel('Amplitude');
title('Scaling');


%Inverting
C=sin(-t);
subplot(2,2,3);
plot(t,y,'r--');
axis([-100,100,-5,15]);
% hold on;
% subplot(2,2,3);
% plot(t,C,'r');
% hold off;
xlabel('Time');
ylabel('Amplitude');
title('Inverting');
