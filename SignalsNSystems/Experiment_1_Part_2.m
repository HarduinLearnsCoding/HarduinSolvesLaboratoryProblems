%Sine Discrete Signal 
t=0:pi/8:2*pi;
A=sin(t);
subplot(3,2,1);
stem(A);
xlabel('Time');
ylabel('Amplitude');
title('Sine Signal');

%Cosine Discrete Signal
t=0:pi/8:2*pi;
B=cos(t);
subplot(3,2,2);
stem(B);
xlabel('Time');
ylabel('Amplitude');
title('Cosine Signal');


%Unit Impulse Discrete Signal
t= -100:10:100;
impulse = t==0;
subplot(3,2,3);
stem(impulse);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impulse Signal');

%Ramp Discrete Signal
subplot(3,2,4);
t=[];
y=[];
j=1;
for i= -100:10:100
t(j)=i;
if(i<0)
y(j)=0;
else
y(j)=i;
end
j=j+1;
end
stem(t,y);
xlabel('Time');
ylabel('Amplitude');
title('Ramp Signal');




%Unit Step Discrete Signal
t=[];
y=[];
j=1;
for i=-100:10:100
             t(j)=i;
             if (i>=0)
                y(j)=1;
             else
                y(j)=0;
             end
             j=j+1;
        end
subplot(3,2,5);
stem(t,y);
axis([-100,100,0,3]);
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');

%Exponential Discrete Signal
t=-2:0.5:10;
C=exp(t);
subplot(3,2,6);
stem(C);
xlabel('Time');
ylabel('Amplitude');
title('Exponential Signal');
