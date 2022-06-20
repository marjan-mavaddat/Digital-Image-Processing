% I = imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg');
I = imread('C:\Users\Marjan\Documents\MATLAB\34\39\40\33.jpg');
I=rgb2gray(I);
I2 = imread('C:\Users\Marjan\Documents\MATLAB\34\39\40\34.jpg');
I2=rgb2gray(I2);
si=I;
gi=I2;
figure,subplot(2,2,1)
imshow(si);title('salt noise');
subplot(2,2,2)
imshow(gi);title('pepper  noise');
sg=im2double(si);
gg=im2double(gi);
ord=1;
kr=3;
kc=3;
sf=(kr*kc)./imfilter(1./(sg+eps),ones(kr,kc),'replicate');
gf=imfilter(gg.^(ord+1),ones(kr,kc),'replicate')./(imfilter(gg.^(ord),ones(kr,kc),'replicate')+eps);
subplot(2,2,3)
imshow(sf);title('Harmonic Filter 3x3 for salt'); 
subplot(2,2,4)
imshow(gf);title('Contraharmonic Filter 3x3 for pepper');