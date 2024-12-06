clc;
clear;
close all;
global asli
asli = imread('cat.jpg');
grayscale = rgb2gray(asli);
subplot(2,2,1)
imshow(asli);
title('Image Asli')
subplot(2,2,2)
imshow(grayscale);
title('Image Grayscale')
subplot(2,2,3)
imhist(grayscale);
title('Histogram Grayscale')
