I = imread('C:\Users\Marjan\Documents\MATLAB\34\35\Marjan.jpg');
% I = imread('C:\Users\Marjan\Documents\MATLAB\34\35\36\37\38\Rayleigh.jpg');
figure,subplot(2,3,1)
imshow(I);title('Rayleigh image');
% I=rgb2gray(I);
subplot(2,3,4)
imhist(I);title('histogram Rayleigh'); 
I2 = imread('C:\Users\Marjan\Documents\MATLAB\34\35\36\37\38\Gaussian.jpg');
subplot(2,3,2)
imshow(I2);title('gaussian noise');
I2=rgb2gray(I2);
subplot(2,3,5)
imhist(I2);title('histogram gaussian'); 
I3 = imread('C:\Users\Marjan\Documents\MATLAB\34\35\36\37\38\uniform.jpg');
subplot(2,3,3)
imshow(I3);title('uniform noise');
I3=rgb2gray(I3);
subplot(2,3,6)
imhist(I3);title('histogram uniform'); 
