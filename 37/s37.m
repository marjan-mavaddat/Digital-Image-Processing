I = imread('C:\Users\Marjan\Documents\MATLAB\34\35\Marjan.jpg');
% I = imread('C:\Users\Marjan\Documents\MATLAB\34\35\36\1.jpg');
figure,subplot(3,3,2)
imshow(I);title('image');
% I=rgb2gray(I);
a=0.2;
b=0.1;
[M,N]=size(I);
if a<=0
   error('parameter a must be positive for exponential');
end
k=-1/a;
R=k*log(1-rand(M,N)); 
J=uint8(R)+uint8(I);
subplot(3,3,4)
imshow(J);title('exponential noise image'); 
subplot(3,3,7)
imhist(J); title('histogram exponential');
aa=20;
bb=700;
J2=aa+(-bb*log(1-rand(M,N))).^.5;
JJ=uint8(J2)+uint8(I);
subplot(3,3,5)
imshow(JJ);title('rayleigh noise'); 
subplot(3,3,8)
imhist(JJ);title('histogram rayleigh');
ae=2;be=3;
k=-1/ae;
R=zeros(M,N);
for j=1:be
R=R+k*log(1-rand(M,N));
end
d=uint8(R)+uint8(I);
subplot(3,3,6)
imshow(d);title('erlang noise');
subplot(3,3,9)
imhist(d);title('imhist erlang');