%Sine Function-----------------------------------
t=-2*pi : pi/8 : 2*pi;

%Superposition
A=sin(t);
B=sin(t+(pi/2));
y=A+B;
z=sin(t+t+(pi/2));
subplot(2,1,1);
plot(t,y,'r');
hold on;
subplot(2,1,1);
plot(t,z,'b');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('Superposition');


%Homogeneity
a=sin(2*t);
b=2*sin(t);
subplot(2,1,2);
plot(t,a,'r');
hold on;
subplot(2,1,2);
plot(t,b,'b');
hold off;
xlabel('Time');
ylabel('Amplitude');
title('Homogeneity');