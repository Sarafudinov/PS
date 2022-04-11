% ��������� P3_5
% �������� ��������� DTFT
clf;
w=-pi:2*pi/255:pi;
x1=[2 4 6 8 10 12 14 16 18];
x2=[1 -1 1 -1 1 -1 1 -1 1];
y=x1.*x2;
h1=freqz(x1,1,w);
h2=freqz(x2,1,w);
h3=freqz(y,1,w);
subplot(3,1,1);
plot(w/pi,abs(h1)); grid
title('������ �������� ������ ������������������');
subplot(3,1,2);
plot(w/pi,abs(h2)); grid
title('������ �������� ������ ������������������');
subplot(3,1,3);
plot(w/pi,abs(h3)); grid
title('������ �������� �������� ������������������');
