clc 
close all 
clear all 
fc1=input('Enter the freq of 1st Sine Wave carrier:');
fc2=input('Enter the freq of 2nd Sine Wave carrier:');
fp=input('Enter the freq of Periodic Binary pulse (Message):');
amp=input('Enter the amplitude (For Both Carrier & Binary Pulse Message):');
amp=amp/2;
t=0:0.001:1; 
c1=amp.*sin(2*pi*fc1*t);
c2=amp.*sin(2*pi*fc2*t);

subplot(4,1,1); 
plot(t,c1)
xlabel('Time--->')
ylabel('Amplitude--->')
title('Carrier 1 Wave')
grid on;
axis([0 1 -amp-0.2 amp+0.2]);

subplot(4,1,2) 
plot(t,c2)
xlabel('Time--->')
ylabel('Amplitude--->')
title('Carrier 2 Wave')
grid on;
axis([0 1 -amp-0.2 amp+0.2]);

m=amp.*square(2*pi*fp*t)+amp;
subplot(4,1,3) 
plot(t,m)
xlabel('Time--->')
ylabel('Amplitude--->')
title('Binary Message Pulses')
axis([0 1 -0.2 2*amp+0.2]);
grid on;
for i=0:1000 %here we are generating the modulated wave
    if m(i+1)==0
        mm(i+1)=c2(i+1);
    else
        mm(i+1)=c1(i+1);
    end
end
subplot(4,1,4) %For Plotting The Modulated wave
plot(t,mm)
xlabel('Time--->')
ylabel('Amplitude--->')
title('FreModulated Wave')
grid on;
axis([0 1 -amp-0.2 amp+0.2]);