% Original = imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg');
% Original=rgb2gray(Original);
Original= imread('eight.tif');

BW = im2bw(Original,0.5);           %Convert into black and white image

minf=@(x) min(x(:));                %set 'min()' filter
maxf=@(x)max(x(:));                 %set 'max()' filter
min_Image=nlfilter(BW,[3 3],minf);  %Apply over 3 x 3 neighbourhood
max_Image=nlfilter(BW,[3 3],maxf);  %Apply over 3 x 3 neighbourhood
figure,
subplot(1,3,1), imshow(BW), title('Original');   %Display image
subplot(1,3,2), imshow(min_Image), title('Min'); %Display min image
subplot(1,3,3), imshow(max_Image), title('Max'); %Display max image