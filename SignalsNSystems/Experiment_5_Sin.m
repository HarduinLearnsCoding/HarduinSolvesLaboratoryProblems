%Sine Function--------------------------------

t= -2*pi : pi/8 : 2*pi;
y=sin(t);
z=sin(t+(3*pi/2));
subplot(1,1,1);
plot(t,y,'b');
hold on;
subplot(1,1,1);
plot(t,z,'g');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('Time-Invariance');