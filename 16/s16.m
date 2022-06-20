% Close all open figures and clear all workspace variables.
% Generate an nth root function where n equals 2.
close all ;clear;clc;
x = 0:255;n=2;c=255/(255 ^ n);
root = nthroot((x/c), n);
figure, plot(root),title('2nd-root transformation'), axis tight, axis square
I = imread('tire.tif');
I_root = uint8(root(I + 1));
figure,subplot(2,2,1), imshow(I), title('Original Image');
subplot(2,2,2), imshow(I_root), title('Nth Root Image');
subplot(2,2,3),imhist(I),title('histogram of original image');
subplot(2,2,4), imhist(I_root), title('histogram of Nth root image');
% Generate an nth power transformation function.
power=c*(x.^n);
figure, plot(power),title('2nd-power transformation');
axis tight, axis square
I_power = uint8(power(I_root + 1));
subplot(1,2,1), imshow(I_power), title('power Image');
subplot(1,2,2), imhist(I_power), title('histogram of power image');