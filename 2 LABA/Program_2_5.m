% ��������� P2_5
% ���������� ����������� ������� y
clf;
pkg load signal;
N=40;
num=[2.2403 2.4908 2.2403];
den=[1 -0.4 0.75];
y=impz(num,den,N);
% ����������� ����������� ����������� �������
stem(y);
xlabel('����� n'); ylabel('���������');
title('���������� ������'); grid;
