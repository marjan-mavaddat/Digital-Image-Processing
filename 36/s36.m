I = imread('C:\Users\Marjan\Documents\MATLAB\34\35\Marjan.jpg');
% I = imread('C:\Users\Marjan\Documents\MATLAB\34\35\36\1.jpg');
figure,subplot(3,3,2)
imshow(I);title('image');
% I=rgb2gray(I);
J = imnoise(I,'gaussian');
subplot(3,3,4)
imshow(J);title('gaussian noise image'); 
subplot(3,3,7)
imhist(J); title('histogram gaussian noise');
J2 = imnoise(I,'salt & pepper');
subplot(3,3,5)
imshow(J2);title('salt & pepper noise'); 
subplot(3,3,8)
imhist(J2);title('histogram salt & pepper');
A = 10;
B = 30;
matrix_uniform = A + (B-A)*rand(size(I));
noisy_image = uint8(I) + uint8(matrix_uniform);
subplot(3,3,6)
imshow(noisy_image);title('uniform noise');
subplot(3,3,9)
imhist(noisy_image);title('imhist uniform');