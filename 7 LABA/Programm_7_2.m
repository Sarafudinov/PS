%Программа 7_2
%Цифровая обработка (повышение резкости) изображения.
I = imread ("image.jpg");
A =[0,-1,0;-1,5,-1;0,-1,0];
grayimage = rgb2gray(I);
S = conv2(grayimage, A, "valid");
imshow(uint8(S),[]);
