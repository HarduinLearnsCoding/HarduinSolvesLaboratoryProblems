clc;
clear all;
close all;
a=2; 
t=0:2*pi/50:2*pi; 
x=a*sin(t); 
l=length(x); 
subplot(2,2,1);
plot(x); 
grid on;                                       
title('Analog Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
axis([0 60 -2.1 +2.1]);

delta=0.2; 
xn=0; 
for i=1:l; 
    if x(i)>xn(i)
        d(i)=1;
        xn(i+1)=xn(i)+delta; 
    else
        d(i)=0;
        xn(i+1)=xn(i)-delta; 
    end
end
subplot(2,2,2);
stairs(xn);
grid on;                                       
title('Delta Modulated Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
axis([0 60 -2.1 +2.1]);

subplot(2,2,3);
plot(d);
grid on;                                       
title('Encoded Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
axis([0 60 -0.1 +1.1]);

for i=1:d 
    if d(i)>xn(i) 
        d(i)=0; 
        xn(i+1)=xn(i)-delta; 
    else
        d(i)=1;
        xn(i+1)=xn(i)+delta;
    end
end
subplot(2,2,4);
plot(xn);
grid on;                                       
title('Demodulated Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
axis([0 60 -2.1 +2.1]);
