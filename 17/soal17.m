clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%
% I=imread('tire.tif');
I=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
I=rgb2gray(I);
I=imresize(I,[512 512]);
imshow(I);title('grayscaleImage')

mask=fspecial('average',[9 11]);
I2=filter2(mask,I);
figure;
imshow(uint8(I2));title('average')

z = edge(I,'roberts');
figure,imshow(z);title('roberts Filter');

mask=fspecial('laplacian');
I2=filter2(mask,I);
figure;
imshow(uint8(I2));title('laplacian')

G = fspecial('gaussian',[5 5],1);
Ig = imfilter(I,G,'same');
figure,imshow(Ig);title('gaussian')