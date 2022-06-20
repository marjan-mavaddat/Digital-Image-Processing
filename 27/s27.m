testImg=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
% Convert from RGB to HSV
hsvTestImg = rgb2hsv(testImg);
% Segregate hue, sat, and value/intensity
hueTestImg = hsvTestImg(:, :, 1);
satTestImg = hsvTestImg(:, :, 2);
valTestImg = hsvTestImg(:, :, 3);
% Display the RGB and the corresponding HSV components
figure; subplot(2, 2, 1)
imshow(testImg); title('RGB test image');
subplot(2, 2, 2)
imshow(hueTestImg); title('Hue component');
subplot(2, 2, 3)
imshow(satTestImg); title('Saturation component');
subplot(2, 2, 4)
imshow(valTestImg); title('Value/intensity component');
