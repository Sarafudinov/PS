% ��������� P3_1
% ������ DTFT
clf;
% ������ �������� ������ DTFT
w=-10*pi:8*pi/511:4*pi;
num=[2 1]; den=[1 -0.6];
h=freqz(num,den,w);
% ������ DTFT
subplot(4,1,1);
plot(w/pi,real(h)); grid
title('�������������� ����� H(e^{j\omega})');
xlabel('\omega /\pi');
ylabel('���������');
subplot(4,1,2);
plot(w/pi,imag(h)); grid
title('������ ����� H(e^{j\omega})');
xlabel('\omega /\pi');
ylabel('���������');
subplot(4,1,3);
plot(w/pi,abs(h)); grid
title('������ �������� |H(e^{j\omega})|');
xlabel('\omega /\pi');
ylabel('���������');
subplot(4,1,4);
plot(w/pi,angle(h)); grid
title('������ ��� arg[H(e^{j\omega})]');
xlabel('\omega /\pi');
ylabel('����, � ��������');
