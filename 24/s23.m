BW = imread('C:\Users\Marjan\Documents\MATLAB\soal4\Marjan.jpg');
imshow(BW);title('orginal image'); 
CC = bwconncomp(BW);
numPixels = cellfun(@numel,CC.PixelIdxList);
[biggest,idx] = max(numPixels);
BW(CC.PixelIdxList{idx}) = 0;
figure;
imshow(BW);title('Determine which is the largest component image'); 