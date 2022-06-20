I = imread('C:\Users\Marjan\Documents\MATLAB\soal4\Marjan.jpg');
I2 = imfill(I);
figure, imshow(I),title('orginal image'); 
figure, imshow(I2),title('fill image');