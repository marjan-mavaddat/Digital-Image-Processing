Img=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
figure; subplot(2, 2, 1)
imshow(Img);title('RGB Image');
R=Img(:, :, 1);
G=Img(:, :, 2);
B=Img(:, :, 3);
subplot(2, 2, 2);imshow(R);title('R Image');
subplot(2, 2, 3);imshow(G);title('G Image');
subplot(2, 2, 4);imshow(B);title('B Image');