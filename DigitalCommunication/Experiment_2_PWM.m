fs=10;
fm=1;
a=5;
t=-1:0.001:1;
stooth=1.01*a.*sawtooth(2*pi*fs*t);
subplot(3,1,1);
plot(t,stooth);
xlabel('Time');
ylabel('Amplitude');
title('Sawtooth Wave');
axis([-1,1,-5.3,5.3]);
msg=a.*sin(2*pi*fm*t);
subplot(3,1,2);
plot(t,msg);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
axis([-1,1,-5.3,5.3]);
for i=1:length(stooth)
    if(msg(i)>=stooth(i))
        pwm(i)=1;
    else
        pwm(i)=0;
    end
end
subplot(3,1,3);
plot(t,pwm);
xlabel('Time');
ylabel('Amplitude');
title('Pulse Width Modulated Signal');
axis([-1,1,-0.2,1.2]);
