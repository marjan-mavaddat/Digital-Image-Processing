% img=imread('C:\Users\Marjan\Documents\MATLAB\30\lena.jpg');
img=imread('C:\Users\Marjan\Documents\MATLAB\30\Marjan.jpg');
figure,subplot(1,3,1);
imshow(img);title('this is Primary picture');
C=fspecial('average',[5,5]); %exact 5x5 average filter 
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
averageimg(:,:,1) = imfilter(R,C);
averageimg(:,:,2) = imfilter(G,C);
averageimg(:,:,3) = imfilter(B,C);
subplot(1,3,2);
imshow(averageimg);title('rgb average picture');
hsvTestImg = rgb2hsv(img);
f = hsvTestImg(:, :, 3);
hsvTestImg(:, :, 3) = imfilter(f,C);
h=hsv2rgb(hsvTestImg);
subplot(1,3,3);
imshow(h);title('hsi average picture');
