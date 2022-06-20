% I = rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\49\1.jpg'));
I = rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\49\Marjan.jpg'));
figure; subplot(1,3,1),imshow(I); title('Original Image');
PSF = fspecial('motion',21,11);
Idouble = im2double(I);
blurred = imfilter(Idouble,PSF,'conv','circular');
subplot(1,3,2), imshow(blurred); title('Blurred Image');
wnr1 = deconvwnr(blurred,PSF);
subplot(1,3,3),imshow(wnr1)
title('Restored Blurred Image(Wiener) Filtering')