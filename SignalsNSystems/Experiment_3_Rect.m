%Rectangular Function------------------------------------------

% t=[];
% y=[];
% j=1;
% for i=-100:0.1:100
%       t(j)=i;
%       if (i<=10 && i>=-10)
%           y(j)=1;
%       else
%           y(j)=0;
%       end
%       j=j+1;
% end

t= -100 : 0.1 : 100;
function k=rect(t)
k=0;
if (t<=10 && t>=-10)
    k=1;
end
end



%Shifting
A=sin(t);
subplot(2,2,1);
plot(t,k,'b--');
axis([-100,100,-1,2]);
% hold on;
% subplot(2,2,1);
% plot(t,A,'b');
% hold off;
xlabel('Time');
ylabel('Amplitude');
title('Shifting');


%Scaling
B=sin(2*t);
subplot(2,2,2);
plot(t,k,'g--');
axis([-100,100,-1,2]);
% hold on;
% subplot(2,2,2);
% plot(t,B,'g');
% hold off;
xlabel('Time');
ylabel('Amplitude');
title('Scaling');


%Inverting
C=sin(-t);
subplot(2,2,3);
plot(t,k,'r--');
axis([-100,100,-1,2]);
% hold on;
% subplot(2,2,3);
% plot(t,C,'r');
% hold off;
xlabel('Time');
ylabel('Amplitude');
title('Inverting');
