% input_image = imread('C:\Users\Marjan\Documents\MATLAB\30\lena.jpg');
input_image = imread('C:\Users\Marjan\Documents\MATLAB\30\Marjan.jpg');
R = input_image(:,:,1);
G = input_image(:,:,2);
B = input_image(:,:,3);
J = imnoise(G,'salt & pepper',0.02);
input_image(:,:,1)=R;
input_image(:,:,2)=J;
input_image(:,:,3)=B;
hsvTestImg = rgb2hsv(input_image);
h = hsvTestImg(:,:,1);
s = hsvTestImg(:,:,2);
i = hsvTestImg(:,:,3);
% Displaying Input Image
figure,subplot(2,2, 1)
imshow(input_image); title('G noise Image');
subplot(2,2, 2)
imshow(h); title('h Image');
subplot(2,2, 3)
imshow(s); title('s noise Image');
subplot(2,2, 4)
imshow(i); title('i noise Image');