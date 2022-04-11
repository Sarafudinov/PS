% ��������� P3_8
% �������� DTFT ������������ ������ �� �������
clf;
x=[1 3 5 7 9 11 13 15 17];
N=length(x)-1; n=0:N;
y=circshift(x, [0 5]);
XF=fft(x);
YF=fft(y);

subplot(2,2,1);
stem(n,abs(XF)); grid
title('DFT �������� ������������������');
subplot(2,2,2);
stem(n,abs(YF)); grid

title('DFT ������������������ � ����������� ������� �� �������');
subplot(2,2,3);
stem(n,angle(XF)); grid

title('���� DFT �������� ������������������');
subplot(2,2,4);
stem(n,angle(YF)); grid
title('���� DFT ������������������ � ����������� ������� �� �������');
