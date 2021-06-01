%Sine Function------------------------------------------------------

t=0: pi/8 : 2*pi;
y=sin(t);

%Shifting
A=sin(t+pi/2);
subplot(2,2,1);
plot(t,y,'b--');
hold on;
subplot(2,2,1);
plot(t,A,'b');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('Shifting');


%Scaling
B=sin(2*t);
subplot(2,2,2);
plot(t,y,'g--');
hold on;
subplot(2,2,2);
plot(t,B,'g');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('Scaling');


%Inverting
C=sin(-t);
subplot(2,2,3);
plot(t,y,'r--');
hold on;
subplot(2,2,3);
plot(t,C,'r');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('Inverting');

