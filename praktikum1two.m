clc;
clear;
close all;
global asli
asli = imread('car.jpg');
R = asli(:,:,1);
G = asli(:,:,2);
B = asli(:,:,3);
Red = cat(3,R,G.*0,B.*0);
Green = cat(3,R.*0,G,B.*0);
Blue = cat(3,R.*0,G.*0,B);
subplot(2,2,1)
imshow(asli);
title('Image Asli')
subplot(2,2,2)
imshow(Red);
title('Image Red')
subplot(2,2,3)
imshow(Green);
title('Image Green')
subplot(2,2,4)
imshow(Blue);
title('Image Blue')
subplot(2,2,1)
