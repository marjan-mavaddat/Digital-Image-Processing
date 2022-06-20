% original = imread('rice.png');
original = imread('C:\Users\Marjan\Documents\MATLAB\34\35\Marjan.jpg');
figure,subplot(1,3,1)
imshow(original);title('original image');
se = strel('disk',12);
tophatFiltered = imtophat(original,se);
subplot(1,3,2)
imshow(tophatFiltered);title('tophat image');
contrastAdjusted = imadjust(tophatFiltered);
subplot(1,3,3)
imshow(contrastAdjusted);title('Thresholded result image');