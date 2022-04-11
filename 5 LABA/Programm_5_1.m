clf;
t=0:0.005:1;
f=10;
xa=cos(2*pi*f*t);
subplot(2,1,1);
plot(t,xa); grid;
xlabel('Время, мсек'); ylabel('Амплитуда');
title('Непрерывный во времени сигнал x_{a}(t)');
axis([0 1 -1.2 1.2]);
subplot(2,1,2);

T=0.01;
n=0:T:1;
xs=cos(2*pi*f*n);
stem(n,xs); grid;
xlabel('Время n'); ylabel('Амплитуда');
title('Дискретный во времени сигнал x[n]');
axis([0 1 -1.2 1.2]);
