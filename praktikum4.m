clc; clear; close all; warning off all;
 
% Membaca citra asli
RGB = imread('naruto.jpg');
figure, imshow(RGB);

% Melakukan transformasi ruang warna citra yang semula RGB menjadi HSV
HSV = rgb2hsv(RGB);
figure, imshow(HSV);

% Melakukan segmentasi terhadap warna biru (nilai Hue 100-250)
H = HSV(:,:,1);
range = [100 250]/360;
mask = (H>range(1)) & (H<range(2));
figure, imshow(mask)

% 1. Mengubah warna background menjadi grayscale
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
 
S = S.*mask;
HSV1 = cat(3,H,S,V);
 
RGB1 = hsv2rgb(HSV1);
figure, imshow(RGB1);

% 2. Mengubah warna objek menjadi merah
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
 
H(mask) = H(mask)+.4;
HSV2 = cat(3,H,S,V);
 
RGB2 = hsv2rgb(HSV2);
figure, imshow(RGB2);

% 3. Mengubah warna objek menjadi merah &amp;amp; warna background menjadi grayscale
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
 
H(mask) = H(mask)+.4;
S = S.*mask;
HSV3 = cat(3,H,S,V);
 
RGB3 = hsv2rgb(HSV3);
figure, imshow(RGB3);

% 4. Mengubah warna objek menjadi ungu &amp;amp; warna background menjadi hijau
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);
 
H(mask) = H(mask)+.33;
H(~mask) = H(~mask)+.2;
HSV4 = cat(3,H,S,V);
 
RGB4 = hsv2rgb(HSV4);
figure, imshow(RGB4);

