% testImg=imread('C:\Users\Marjan\Documents\MATLAB\image.png');
testImg=imread('C:\Users\Marjan\Documents\MATLAB\30\Marjan.jpg');

wImg(:,:,1)= testImg(:,:,1)*0.7;
wImg(:,:,2)= testImg(:,:,2)*0.7;
wImg(:,:,3)= testImg(:,:,3)*0.7;

figure; subplot(1, 2, 1)
imshow(testImg); title('RGB test image');
subplot(1, 2, 2)
imshow(wImg); title('Adjusting the intensity of an image using color transformations');
