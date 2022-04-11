% Программа P4_3
% Нулевые точки FIR фильтров линейной фазы
clf;
b=[1 -10.5 25.5 -63]
num1=[b 81 fliplr(b)];
num2=[b 81 81 fliplr(b)];
num3=[b 0 -fliplr(b)];
num4=[b 81 -81 -fliplr(b)];
n1=0:length(num1)-1;
n2=0:length(num2)-1;

subplot(2,2,1); stem(n1,num1);
xlabel('Время n'); ylabel('Амплитуда'); grid
title('Тип 1 FIR фильтра');

subplot(2,2,2); stem(n2,num2);
xlabel('Время n'); ylabel('Амплитуда'); grid
title('Тип 2 FIR фильтра');

subplot(2,2,3); stem(n1,num3);
xlabel('Время n'); ylabel('Амплитуда'); grid
title('Тип 3 FIR фильтра');

subplot(2,2,4); stem(n2,num4);
xlabel('Время n'); ylabel('Амплитуда'); grid
title('Тип 4 FIR фильтра');

figure;
subplot(2,2,1); zplane(num1,1);
title('Тип 1 FIR фильтра');
subplot(2,2,2); zplane(num2,1);
title('Тип 2 FIR фильтра');
subplot(2,2,3); zplane(num3,1);
title('Тип 3 FIR фильтра');
subplot(2,2,4); zplane(num4,1);
title('Тип 4 FIR фильтра');

disp('Нули FIR фильтра типа 1');
disp(roots(num1));
disp('Нули FIR фильтра типа 2');
disp(roots(num2));
disp('Нули FIR фильтра типа 3');
disp(roots(num3));
disp('Нули FIR фильтра типа 4');
disp(roots(num4));
