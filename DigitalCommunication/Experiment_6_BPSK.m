clc 
close all 
clear all 
t=0:.001:1; 
fc=input('Enter frequency of Carrier Sine wave: ');
fm=input('Enter Message frequency : ');
amp=input('Enter Carrier & Message Amplitude(Assuming Both Equal):');
c=amp.*sin(2*pi*fc*t);
subplot(3,1,1) 
plot(t,c)
xlabel('Time--->')
ylabel('Amplitude--->')
title('Carrier Wave')
grid on;
m=square(2*pi*fm*t);
subplot(3,1,2)
plot(t,m)
xlabel('Time--->')
ylabel('Amplitude--->')
title('Message Signal')
axis([0 1 -1.1 1.1]);
grid on;
x=c.*m;
subplot(3,1,3) 
plot(t,x)
xlabel('Time--->')
ylabel('Amplitude--->')
title('Phase Shift Keyed Signal')
grid on;