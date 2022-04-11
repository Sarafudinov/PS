% ��������� P4_3
% ������� ����� FIR �������� �������� ����
clf;
b=[1 -10.5 25.5 -63]
num1=[b 81 fliplr(b)];
num2=[b 81 81 fliplr(b)];
num3=[b 0 -fliplr(b)];
num4=[b 81 -81 -fliplr(b)];
n1=0:length(num1)-1;
n2=0:length(num2)-1;

subplot(2,2,1); stem(n1,num1);
xlabel('����� n'); ylabel('���������'); grid
title('��� 1 FIR �������');

subplot(2,2,2); stem(n2,num2);
xlabel('����� n'); ylabel('���������'); grid
title('��� 2 FIR �������');

subplot(2,2,3); stem(n1,num3);
xlabel('����� n'); ylabel('���������'); grid
title('��� 3 FIR �������');

subplot(2,2,4); stem(n2,num4);
xlabel('����� n'); ylabel('���������'); grid
title('��� 4 FIR �������');

figure;
subplot(2,2,1); zplane(num1,1);
title('��� 1 FIR �������');
subplot(2,2,2); zplane(num2,1);
title('��� 2 FIR �������');
subplot(2,2,3); zplane(num3,1);
title('��� 3 FIR �������');
subplot(2,2,4); zplane(num4,1);
title('��� 4 FIR �������');

disp('���� FIR ������� ���� 1');
disp(roots(num1));
disp('���� FIR ������� ���� 2');
disp(roots(num2));
disp('���� FIR ������� ���� 3');
disp(roots(num3));
disp('���� FIR ������� ���� 4');
disp(roots(num4));
