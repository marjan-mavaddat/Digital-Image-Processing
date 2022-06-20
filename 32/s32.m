clc;
close all;
% img=imread('C:\Users\Marjan\Documents\MATLAB\30\lena.jpg');
img=imread('C:\Users\Marjan\Documents\MATLAB\30\Marjan.jpg');
figure,subplot(1,4,1);
imshow(img);title('this is Primary picture');
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
lap = [-1 -1 -1; -1 8 -1; -1 -1 -1];

resp(:,:,1) = imfilter(R, lap, 'conv');
resp(:,:,2) = imfilter(G, lap, 'conv');
resp(:,:,3) = imfilter(B, lap, 'conv');
%// Change - Normalize the response image
minR = min(resp(:));
maxR = max(resp(:));
resp = (resp - minR) / (maxR - minR);
%// Change - Adding to original image now
sharpened = img + resp; 
subplot(1,4,2);
imshow(sharpened);title('rgb lap picture'); 

hsvTestImg = rgb2hsv(img);
f = hsvTestImg(:, :, 3);
hsvTestImg(:, :, 3) = imfilter(f , lap, 'conv');
resp2=hsvTestImg(:, :, 3);
% resp2=hsv2rgb(hsvTestImg);
%// Change - Normalize the response image
minR = min(resp2(:));
maxR = max(resp2(:));
resp2 = (resp2 - minR) / (maxR - minR);
%// Change - Adding to original image now
Img1 = rgb2hsv(img);
resp2(:, :, 3) = Img1(:, :, 3) + resp2; 
resp2(:, :, 2)=hsvTestImg(:, :, 2);
resp2(:, :, 1)=hsvTestImg(:, :, 1);
sharpened2=hsv2rgb(resp2);
subplot(1,4,3);
imshow(sharpened2);title('hsi lap picture');

hsv1 = rgb2hsv(sharpened);
hsv2 = rgb2hsv(sharpened2);
diff=imabsdiff(hsv1(:, :, 3),hsv2(:, :, 3));


subplot(1,4,4);
imshow(diff);title(' - lap picture');