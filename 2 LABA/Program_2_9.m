% ��������� P2_9
% ��������� �������� �������
clf;
n=0:299;
x1=cos(2*pi*10*n/256);
x2=cos(2*pi*100*n/256);
x=x1+x2;
% ���������� �������� �������������������
num1=[0.5 0.27 0.77];
y1=filter(num1,1,x); % ����� ������� #1
den2=[1 -0.53 0.46];
num2=[0.45 0.5 0.45];
y2=filter(num2,den2,x); % ����� ������� #2
% ������� �������� �������������������
subplot(2,1,1);
plot(n,y1); axis([0 300 -2 2]);
ylabel('���������');
title('����� ������� #1'); grid;
subplot(2,1,2);
plot(n,y2); axis([0 300 -2 2]);
xlabel('����� n'); ylabel('���������');
title('����� ������� #2'); grid;