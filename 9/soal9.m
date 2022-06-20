%---------------------------------------------------------%
%--Gaussian High pass and Low pass filter--------------------%
%---------------------------------------------------------%
clc
close all
clear all
RGB=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
% RGB=imread('C:\Users\Marjan\Documents\MATLAB\test.jpg');
I=rgb2gray(RGB); % convert the image to grey 
A = fft2(double(I)); % compute FFT of the grey image
A1=fftshift(A); % frequency scaling
% Gaussian Filter Response Calculation
[M, N]=size(A); % image size
D0=20; % filter size parameter 
X=0:N-1;
Y=0:M-1;
[X, Y]=meshgrid(X,Y);
Cx=0.5*N;
Cy=0.5*M;
Lo=exp(-((X-Cx).^2+(Y-Cy).^2)./(2*D0).^2);
Hi=1-Lo; % High pass filter=1-low pass filter
% Filtered image=ifft(filter response*fft(original image))
J=A1.*Lo;
J1=ifftshift(J);
B1=ifft2(J1);
K=A1.*Hi;
K1=ifftshift(K);
B2=ifft2(K1);
K2=Lo.*Hi;
J2=A1.*K2;
K3=ifftshift(J2);
B3=ifft2(K3);
K4=1-K2;
J3=A1.*K4;
K4=ifftshift(J3);
B4=ifft2(K4);
%----visualizing the results----------------------------------------------
figure(1)
imshow(I);colormap gray
title('original image','fontsize',14)
figure(2)
imshow(abs(A1),[-12 300000]), colormap gray
title('fft of original image','fontsize',14)
figure(3)
imshow(abs(B1),[12 290]), colormap gray
title('low pass filtered image','fontsize',14)
figure(4)
imshow(abs(B2),[12 290]), colormap gray
title('High pass filtered image','fontsize',14)
figure(5)
imshow(abs(B3),[12 290]), colormap gray
title('band pass filtered image','fontsize',14)
figure(6)
imshow(abs(B4),[12 290]), colormap gray
title('band stop filtered image','fontsize',14)