I = imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg');
I=rgb2gray(I);
% I = imread('eight.tif');
figure, imshow(I)
J = imnoise(I,'salt & pepper',0.02);
K = medfilt2(J);
imshowpair(J,K,'montage'),
title('noise salt & pepper                         Median filter');