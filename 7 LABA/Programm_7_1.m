%Цифровая обработка(размытие) изображения
I = imread ("image.jpg");
A = ones (40, 40)/400;
I = rgb2gray(I);
S = conv2 (I, A, "valid");
imshow(S,[]);imshow(S,[]);
 
