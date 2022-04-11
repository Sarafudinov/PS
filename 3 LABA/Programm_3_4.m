% Программа P3_4
% Свойство свёртки DTFT
clf;
w=-pi:2*pi/255:pi;
x1=[2 4 6 8 10 12 14 16 18];
x2=[1 -2 3 -2 1];
y=conv(x1,x2);
h1=freqz(x1,1,w);
h2=freqz(x2,1,w);
hp=h1.*h2;
h3=freqz(y,1,w);
subplot(2,2,1);
plot(w/pi,abs(hp)); grid;
title('Модули спектра');
subplot(2,2,2);
plot(w/pi,abs(h3)); grid;
title('Спектр значений свёрнутой последовательности');
subplot(2,2,3);
plot(w/pi,angle(hp)); grid;
title('Сумма фаз спектра');
subplot(2,2,4);
plot(w/pi,angle(h3)); grid;
title('Спектр фаз свёрнутой последовательности');
