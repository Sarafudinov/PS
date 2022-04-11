%Программа 7_3
%Цифровая обработка(тиснение) изображения.
I = imread ("image.jpg");
A =[-1,-1,-1;-1,8,-1;-1,-1,-1];
grayimage = rgb2gray(I);
S = conv2(grayimage, A, "valid");
imshow(uint8(S),[]);
