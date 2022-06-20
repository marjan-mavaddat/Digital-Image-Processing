% BW1 = imread('circles.png');
BW1 = imread('C:\Users\Marjan\Documents\MATLAB\soal4\Marjan.jpg');
BW2 = bwmorph(BW1,'skel',inf);
imshow(BW1);title('orginal image');
figure,imshow(BW2);title('skelelton image');

BW3 = bwmorph(BW1,'remove');
figure,imshow(BW3);title('Boundary Extraction image');
