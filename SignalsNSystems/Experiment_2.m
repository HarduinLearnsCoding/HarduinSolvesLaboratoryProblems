t = 0 : pi/8 : 2*pi;
y=sin(t);
z=cos(t);

%Addition
A=y+z;
subplot(2,2,1);
plot(t,A,'b');
xlabel('Time');
ylabel('Amplitude');
title('Addition');

%Subtraction
B=y-z;
subplot(2,2,2);
plot(t,B,'r');
xlabel('Time');
ylabel('Amplitude');
title('Subtraction');

%Multiplication
C=y.*z;
subplot(2,2,3);
plot(t,C,'g');
xlabel('Time');
ylabel('Amplitude');
title('Multiplication');



%Division
t = -2*pi : pi/8 : 2*pi;
y=sin(t);
z=cos(t);
D=y./z;
subplot(2,2,4);
plot(t,D,'b');
xlabel('Time');
ylabel('Amplitude');
title('Division');
