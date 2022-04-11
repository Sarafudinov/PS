%Программа 7_5
%Цифровая обработка(тиснение) изображения пользовательской функцией.

I = imread ("image.jpg");
A =[-1,-1,-1;-1,8,-1;-1,-1,-1];
grayimage = rgb2gray(I);
S = conv2_manual(grayimage, A);
imshow(S,[]);

