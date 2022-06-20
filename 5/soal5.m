I = imread('C:\Users\Marjan\Documents\MATLAB\q.jpg');
m=rgb2gray(I);
x = edge(m,'sobel');
y = edge(m,'canny');
z = edge(m,'prewitt');
w = edge(m,'prewitt');
figure,imshow(x);title('Sobel Filter');
figure,imshow(y);title('Canny Filter');
figure,imshow(z);title('Prewitt Filter');
figure,imshow(w);title('Roberts Filter');
figure,imshow(m);title('Grayscale Image');


