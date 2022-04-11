% Программа P4_2
% Собственный отклик низкочастотного фильтра
clf;
M=10;
num=ones(1,M)/M;
w=0:pi/255:pi;
h=freqz(num,1,w);
g=20*log10(abs(h));
plot(w/pi,g); grid
axis([0 1 -50 0.5]);
xlabel('\omega /\pi'); ylabel('Добавление');
title(['M = ',num2str(M)]);
