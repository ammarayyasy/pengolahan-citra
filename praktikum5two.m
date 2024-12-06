clc; clear; close all; warning off all;
%baca citra
I = imread('lena.jpg');
figure; imshow(I); title('Citra Asli');

% Motion-blur kan citra
LEN = 30; % Panjang blur (satuan: pixel)
TETHA = 10; % sudut blur (satuan: derajat)
PSF = fspecial('motion', LEN, TETHA);
Blurred = imfilter(I, PSF, 'circular', 'conv');
figure; imshow(Blurred); title('Citra terdegradasi (motion blur)')

% Restorasi dengan L-R, jumlah iterasi = 5
luc1 = deconvlucy(Blurred, PSF, 5);
figure; imshow(luc1); title('Citra terestorasi, jumlah iterasi = 5');

% Restorasi dengan L-R, jumlah iterasi = 10
luc1 = deconvlucy(Blurred, PSF, 10);
figure; imshow(luc1); title('Citra terestorasi, jumlah iterasi = 10');

% Restorasi dengan L-R, jumlah iterasi = 15
luc1 = deconvlucy(Blurred, PSF, 15);
figure; imshow(luc1); title('Citra terestorasi, jumlah iterasi = 15');

% Restorasi dengan L-R, jumlah iterasi = 20
luc1 = deconvlucy(Blurred, PSF, 20);
figure; imshow(luc1); title('Citra terestorasi, jumlah iterasi = 20');