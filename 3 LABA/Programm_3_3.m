% Программа P3_3
% Свойство изменения частоты DTFT
clf;
w=-pi:2*pi/255:pi; wo=0.4*pi;
num1=[2 4 6 8 10 12 14 16 18];
L=length(num1);
h1=freqz(num1,1,w);
n=0:L-1;
num2=exp(wo*i*n).*num1;
h2=freqz(num2,1,w);
subplot(2,2,1);
plot(w/pi,abs(h1)); grid
title('Спектр значений исходной последовательности');
subplot(2,2,2);
plot(w/pi,abs(h2)); grid
title('Спектр значений последовательности изменённой частоты');
subplot(2,2,3);
plot(w/pi,angle(h1)); grid
title('Спектр фаз исходной последовательности');
subplot(2,2,4);
plot(w/pi,angle(h2)); grid
title('Спектр фаз последовательности изменённой частоты');
