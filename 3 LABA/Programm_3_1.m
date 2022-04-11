% Программа P3_1
% Оценка DTFT
clf;
% Расчёт значений частот DTFT
w=-10*pi:8*pi/511:4*pi;
num=[2 1]; den=[1 -0.6];
h=freqz(num,den,w);
% График DTFT
subplot(4,1,1);
plot(w/pi,real(h)); grid
title('Действительная часть H(e^{j\omega})');
xlabel('\omega /\pi');
ylabel('Амплитуда');
subplot(4,1,2);
plot(w/pi,imag(h)); grid
title('Мнимая часть H(e^{j\omega})');
xlabel('\omega /\pi');
ylabel('Амплитуда');
subplot(4,1,3);
plot(w/pi,abs(h)); grid
title('Спектр значений |H(e^{j\omega})|');
xlabel('\omega /\pi');
ylabel('Амплитуда');
subplot(4,1,4);
plot(w/pi,angle(h)); grid
title('Спектр фаз arg[H(e^{j\omega})]');
xlabel('\omega /\pi');
ylabel('Фаза, в радианах');
