BW1 = imread('C:\Users\Marjan\Documents\MATLAB\soal4\Marjan.jpg');
figure(1);imshow(BW1);title('orginal image','fontsize',14)
SE = strel('disk',2);
BW2 = imerode(BW1,SE);
figure(2);imshow(BW2);title('Erosion image','fontsize',14)
BW3 = imdilate(BW1,SE);
figure(3);imshow(BW3);title('Dilation image','fontsize',14)