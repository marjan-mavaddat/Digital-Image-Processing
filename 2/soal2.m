% I=imread('C:\Users\Marjan\Desktop\Sample Pictures\Penguins.jpg');
% y=rgb2gray(I);
% imwrite(y,'C:\Users\Marjan\Desktop\Sample Pictures\Penguins.jpg');
% I=imread('C:\Users\Marjan\Desktop\Sample Pictures\Penguins.jpg');
% imshow(I);
% title('grayscaleImage')
J = histeq(I);
imshowpair(I,J,'montage');
title('grayscaleImage                               histogram equalization');
axis off
figure
imhist(I,256);
figure
imhist(J,256);