% Sine Signal 
t=0 : pi/8 : 2*pi;
A=sin(t);
subplot(3,2,1);
plot(t,A,'b');
xlabel('Time');
ylabel('Amplitude');
title('Sine Signal');

%Cosine Signal
t=0: pi/8 : 2*pi;
B=cos(t);
subplot(3,2,2);
plot(t,B,'r');
xlabel('Time');
ylabel('Amplitude');
title('Cosine Signal');

%Unit Impulse Signal
t= -100:1:100;
impulse = t==0;
subplot(3,2,3);
plot(t,impulse);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impulse Signal');





%Ramp Signal
t= -100:1:100;
x=t>0;
subplot(3,2,4);
plot (t,t.*x);
xlabel('Time');
ylabel('Amplitude');
title('Ramp Signal');

%Unit Step Signal
t=[];
y=[];
j=1;
for i=-100:0.1:100
             t(j)=i;
             if (i>=0)
                y(j)=1;
             else
                y(j)=0;
             end
             j=j+1;
        end
subplot(3,2,5);
plot(t,y);
axis([-100,100,0,3]);
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');



%Exponential Signal
t=-2:0.5:10;
C=exp(t);
subplot(3,2,6);
plot(t,C,'g');
xlabel('Time');
ylabel('Amplitude');
title('Exponential Signal');
