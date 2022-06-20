% rgbInputImage = imread('peppers.png');
% rgbInputImage = imread('C:\Users\Marjan\Documents\MATLAB\49\50\51\1.jpg');
rgbInputImage = imread('C:\Users\Marjan\Documents\MATLAB\49\50\51\Marjan.jpg');
labInputImage = applycform(rgbInputImage,makecform('srgb2lab'));
Lbpdfhe = fcnBPDFHE(labInputImage(:,:,1));
labOutputImage = cat(3,Lbpdfhe,labInputImage(:,:,2),labInputImage(:,:,3));
rgbOutputImage = applycform(labOutputImage,makecform('lab2srgb'));
figure, subplot 121, imshow(rgbInputImage);title('Low-contrast image');
subplot 122,
imshow(rgbOutputImage);title('Fuzzy Equalization');
