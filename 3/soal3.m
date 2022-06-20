A = imread('C:\Users\Marjan\Desktop\Sample Pictures\Penguins.jpg');

theta = 45;

tform = affine2d([cosd(theta) -sind(theta) 0; sind(theta) cosd(theta) 0; 0 0 1]);

outputImage = imwarp(A,tform);

figure, imshow(outputImage); 