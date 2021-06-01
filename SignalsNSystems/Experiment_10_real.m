x=[1,1,1,1,zeros(1,4)];
n=8;
X=fft(x,n);
magx=abs(X);
phase=angle(X)*180/pi;

subplot(2,2,1),plot(x);
grid;
xlabel('n'),ylabel('Signal');
title('Input Signal');

subplot(2,2,2),plot(magx);
grid;
xlabel('n'),ylabel('Magnitude');
title('Magnitude Plot');

subplot(2,2,3),plot(phase);
grid;
xlabel('n'),ylabel('degrees');
title('Phase Plot');
