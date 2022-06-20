clc;
close all;
% img=im2double(imread('C:\Users\Marjan\Documents\MATLAB\30\1.jpg'));
img=imread('C:\Users\Marjan\Documents\MATLAB\30\Marjan.jpg');
figure,subplot(4,2,1);
imshow(img);title('this is Primary picture');
% Convert from RGB to HSV
hsvTestImg = rgb2hsv(img);
% Segregate hue, sat, and value/intensity
hueTestImg = hsvTestImg(:, :, 1);
satTestImg = hsvTestImg(:, :, 2);
valTestImg = hsvTestImg(:, :, 3);
% Display the RGB and the corresponding HSV components
subplot(4,2, 2)
imshow(hueTestImg); title('Hue component');
subplot(4,2, 3)
imshow(satTestImg); title('Saturation component');
subplot(4,2, 4)
imshow(valTestImg); title('Value/intensity component');
% BW = imbinarize(satTestImg);
threshold = graythresh(satTestImg);
BW=im2bw(satTestImg,threshold);
subplot(4,2, 5)
imshow(BW); title('Binary saturation mask');
product =immultiply(hueTestImg,BW);
subplot(4,2, 6)
imshow(product); title('Product Binary saturation mask & H');
subplot(4,2, 7)
imhist(product); title('histogram Product');
BW2=im2bw(product,0.7);
subplot(4,2, 8)
imshow(BW2); title('Segmentation of red components 0.7');
