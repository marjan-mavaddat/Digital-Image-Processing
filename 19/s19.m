clc
clear
close all
img=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
figure,imshow(img);title('this is Primary picture');
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
eqimg(:,:,1) = histeq(R);
eqimg(:,:,2) = histeq(G);
eqimg(:,:,3) = histeq(B);
figure,imshow(eqimg);title('this is Stretch image');

