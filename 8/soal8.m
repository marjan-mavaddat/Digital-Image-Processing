clc;
clear;
close all;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I=imread('C:\Users\Marjan\Documents\MATLAB\Marjan.jpg');
I=rgb2gray(I);
I=imresize(I,[150 150]);
[m, n]=size(I);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r1=fftshift(fft2(I));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D0=400;
nn=2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
u=0:(m-1);
v=0:(n-1);
idx=find(u>m/2);
u(idx)=u(idx)-m;
idy=find(v>n/2);
v(idx)=v(idx)-n;
[v,u]=meshgrid(v,u);
D=u.^2+v.^2;
D=fftshift(D);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
new=zeros(m,n);
for u=1:m
    for v=1:n
        new(u,v)=1/(1+(D(u,v)/D0)^(2*nn));
    end
end
g=uint8(ifft2(ifftshift(new.*r1)));
subplot(1,2,1);
imshow(uint8(I));
title('orginal image');
subplot(1,2,2);
imshow(uint8(g));
title('filtered image with butterworth low pass');
figure
new2=1-new; 
g=uint8(ifft2(ifftshift(new2.*r1)));
subplot(1,2,1);
imshow(uint8(I));
title('orginal image');
subplot(1,2,2);
imshow(uint8(g));
title('filtered image with butterworth high pass');
figure
new3=new.*new2; 
g=uint8(ifft2(ifftshift(new3.*r1)));
subplot(1,2,1);
imshow(uint8(I));
title('orginal image');
subplot(1,2,2);
imshow(uint8(g));
title('filtered image with butterworth band pass');
figure
new4=1-new3;  
g=uint8(ifft2(ifftshift(new4.*r1)));
subplot(1,2,1);
imshow(uint8(I));
title('orginal image');
subplot(1,2,2);
imshow(uint8(g));
title('filtered image with butterworth band stop');