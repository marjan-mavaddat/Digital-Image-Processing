%Create the Spacial Filtered Image
f = im2double(rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg')));
% f = im2double(rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\41\Adaptive-Median-Filter-master\Adaptive-Median-Filter-master\46\1.jpg')));
h = [-1 0 1;-2 0 2; -1 0 1];
sfi = imfilter(f,h, 'conv');
%Display results (show all values)
figure,imshow(sfi, []); title('spatial filter');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Create the Frequency Filtered Image
f = im2double(rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg')));
% f = rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\41\Adaptive-Median-Filter-master\Adaptive-Median-Filter-master\46\1.jpg'));
h = [-1 0 1;-2 0 2; -1 0 1];
% PQ = paddedsize(uint8(size(f)));
[m,n] = size(f);
% creating a null array of size 2m X 2n
c = zeros(2*m,2*n);
% reading the size of the null array
PQ = size(c);
F = fft2(double(f), PQ(1), PQ(2));
H = fft2(double(h), PQ(1), PQ(2));
F_fH = H.*F;
ffi = ifft2(F_fH);
ffi = ffi(2:size(f,1)+1, 2:size(f,2)+1);

%Display results (show all values)
figure, imshow(ffi,[]);title('Frequency Filtering');
dblSubtractedImage=imsubtract(ffi,sfi);
% dblSubtractedImage = double(ffi) - double(sfi);
figure,imshow(dblSubtractedImage, []);title('Subtracted - ');
