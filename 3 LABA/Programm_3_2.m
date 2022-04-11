% Программа P3_2
% Свойство изменений DTFT во времени 
clf;
w=-pi:2*pi/255:pi; wo=0.4*pi; D=15;
num=[1 2 3 4 5 6 7 8 9 10 11 12 13 14];
h1=freqz(num,1,w);
h2=freqz([zeros(1,D) num],1,w);
subplot(2,2,1);
plot(w/pi,abs(h1)); grid
title('Спектр значений исходной последовательности');
subplot(2,2,2);
plot(w/pi,abs(h2)); grid
title('Спектр значений последовательности изменённой во времени');
subplot(2,2,3);
plot(w/pi,angle(h1)); grid
title('Спектр фаз исходной последовательности');
subplot(2,2,4);
plot(w/pi,angle(h2)); grid
title('Спектр фаз последовательности изменённой во времени');
