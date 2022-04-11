% Программа P1_6
% Генерация последовательности смодулированных амплитуд
clf;
n=0:150;
m=0.2; fH=0.1; fL=0.01;
xH=sin(2*pi*fH*n);
xL=sin(2*pi*fL*n);
y=(1+m*xL).*xH;

stem(n,y); grid;
xlabel('Time n'); ylabel('Amplitude');
