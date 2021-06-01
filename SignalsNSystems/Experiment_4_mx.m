%y=3x function--------------------------------
t1=-100:1:100;
t2=0:1:200;

%Linearity
y=3*t1;
z=3*t2;
A=y+z;
subplot(2,2,1);
plot(t1+t2,A,'b');
xlabel('Time');
ylabel('Amplitude');
title('Superposition');
B=3*(t1+t2);
subplot(2,2,2);
plot(t1+t2,B,'r');
xlabel('Time');
ylabel('Amplitude');
title('Homogeneity');

%Homogeneity
C=3*(2*t1);
subplot(2,2,3);
plot(2*t1,C,'b');
xlabel('Time');
ylabel('Amplitude');
title('Superposition');
D=2*3*t1;
subplot(2,2,4);
plot(2*t1,D,'g');
xlabel('Time');
ylabel('Amplitude');
title('Homogeneity');