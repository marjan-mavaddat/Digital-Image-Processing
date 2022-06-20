clc
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
I = imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
I=rgb2gray(I);
figure,imshow(I);
title('input image');
figure,imhist(I);title('histogram input image');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 J = imnoise(I,'gaussian',0.01,0.01);
 figure,imshow(J)
 title('Noisy image 2')
 figure,imhist(J);title('histogram Noisy image');
