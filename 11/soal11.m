clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%
I1=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
I1=rgb2gray(I1);
imshow(I1);
title('image1');
figure;
%%%%%%%%%%%%%%%%%%%%%%%%
x1=fft2(I1);
%%%%%%%%%%%%%%%%%%%%%%%%
r1=abs(x1);
imshow(log(r1+1),[]);
title('scale part of image1');
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=angle(x1);
imshow(t);
title('phase part of image1');
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
imshow(log(ifft2(x1)+1),[]);
