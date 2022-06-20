I = imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg');
% I = imread('C:\Users\Marjan\Documents\MATLAB\34\39\3.jpg');
figure,subplot(2,2,1)
I=rgb2gray(I);
imshow(I);title('image');
J = imnoise(I,'gaussian',0,0.001);
subplot(2,2,2)
imshow(J);title('gaussian noise');
g=im2double(J);
kr=3;
kc=3;
f=exp(imfilter(log(g),ones(kr,kc),'replicate')).^(1/(kr*kc));
subplot(2,2,3)
imshow(f);title('geometric 3x3'); 
w=ones(kr,kc)/(kr*kc);
F=imfilter(I,w,'replicate','same');
subplot(2,2,4)
imshow(F);title('Arithmetic 3x3');