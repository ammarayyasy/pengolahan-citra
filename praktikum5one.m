I = imread('otak.jpg'); % baca citra
figure; imshow(I); title('Citra Asli');

% Kaburkan citra dengan motion blur
LEN = 30; % Panjang blur (satuan: pixel
TETHA = 10; % sudut blur (satuan: derajat)
PSF = fspecial('motion', LEN, TETHA);
Blurred = imfilter(I, PSF, 'circular', 'conv');
figure; imshow(Blurred); title('Citra Blur')

% Restorasi citra dengan penapis Wiener
wnr1 = deconvwnr(Blurred, PSF);
figure; imshow(wnr1);
title('Citra Restorasi');

% Hitung selisih antara citra asli dengan citra hasil restorasi
figure; imshow(imabsdiff(I, Blurred));
title('Citra Minus')