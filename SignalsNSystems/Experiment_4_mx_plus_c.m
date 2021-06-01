%y=3x+2 function--------------------------------
t1=0:1:10;
t2=10:1:20;

%Linearity
y=3*t1+5;
z=3*t2+5;
A=y+z;
subplot(2,2,1);
plot(t1+t2,A,'b');
B=3*(t1+t2)+5;
subplot(2,2,2);
plot(t1+t2,B,'r');

%Homogenity
C=3*(2*t1)+5;
subplot(2,2,3);
plot(2*t1,C,'b');
D=2*(3*t1+5);
subplot(2,2,4);
plot(2*t1,D,'g');