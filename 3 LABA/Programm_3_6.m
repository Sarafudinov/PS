% ��������� P3_6
% �������� �������� ������� DTFT
clf;
w=-pi:2*pi/255:pi;
num=[3 4 5 6];
L=length(num)-1;
h1=freqz(num,1,w);
h2=freqz(fliplr(num),1,w);
h3=exp(w*L*i).*h2;
subplot(2,2,1);
plot(w/pi,abs(h1)); grid
title('������ �������� �������� ������������������');
subplot(2,2,2);
plot(w/pi,abs(h3)); grid
title('������ �������� ������������������ c ��������� ��������');
subplot(2,2,3);
plot(w/pi,angle(h1)); grid
title('������ ��� �������� ������������������');
subplot(2,2,4);
plot(w/pi,angle(h3)); grid
title('������ ��� ������������������ c ��������� ��������');
