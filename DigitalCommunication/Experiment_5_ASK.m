clear;
clc;
%b=input('Enter the Bit Stream \n');
%b=[0 1 0 1 1 0];
b=[0 1 0 1 1 0 1 0 0 1 0 1 0];
%b=[0 1 0 0 0 0 1 1 1 1 0 1 0 0 0 0 0 1 1 1 1 1 0 1 1 0 1 1 1];
n=length(b);
t=0:0.01:n;
X=1:1:(n+1)*100;
for i=1:n
    for j=i:1:i+1
        bW(X(i*100:(i+1)*100))=b(i);
    end
end
bW=bW(100:end);
sint=sin(2*pi*t);
st=bW.*sint;
subplot(3,1,1);
plot(t,bW);
title('Input Binary Sequence');
ylabel('Amplitude--->');
xlabel('Time--->');
grid on;
axis([0 n -2 +2]);

subplot(3,1,2);
plot(t,sint);
title('Message Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
grid on;
axis([0 n -2 +2]);

subplot(3,1,3);
plot(t,st);
title('Amplitude Shift Keying Modulated Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
grid on;
axis([0 n -2 +2]);
