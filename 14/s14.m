I=imread('C:\Users\Marjan\Documents\MATLAB\soal4\Marjan.jpg');
imshow(I)
I2=im2double(I);
J=1*log(1+I2);
J2=2*log(1+I2);
J3=5*log(1+I2);
figure, imshow(J)
figure, imshow(J2)
figure, imshow(J3)