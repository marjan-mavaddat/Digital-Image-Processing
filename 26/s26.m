% read an RGB Image in MATLAB Environment
img=imread('C:\Users\Marjan\Documents\MATLAB\apple.jpeg');
figure;imshow(img);title('RGB Image');

% convert class of RGB image to 'uint8'
img=im2uint8(img);
 
% complement each pixel by subtracting it from 255.
comp=255-img;
 
% Display Complemented RGB Image
figure;imshow(comp);title('Complemented RGB Image');