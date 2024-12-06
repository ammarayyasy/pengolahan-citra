clc; clear; close all; warning off all;

I = imread('cat.jpg');
Inoise = imnoise(I, 'salt & pepper', 0.2);
figure; imshow(I); figure; imshow(Inoise);
r = Inoise(:,:,1); g = Inoise(:,:,2); b = Inoise(:,:,3);
Ifiltered_r = medfilt2(r, [3 3]);
Ifiltered_g = medfilt2(g, [3 3]);
Ifiltered_b = medfilt2(b, [3 3]);
Ifiltered = cat(3, Ifiltered_r, Ifiltered_g, Ifiltered_b);
figure; imshow(Ifiltered)