asli = imread('otak.jpg');
edit = imdivide(asli,2);
figure;
imshow(edit);
impixelregion;
impixelinfo;

figure;
imshow(asli);
impixelregion;
impixelinfo;

%add
%subtract
%multiply
%divide