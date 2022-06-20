figure;
L = 256;
I = imread('C:\Users\Marjan\Documents\MATLAB\m1.jpg');
exp_I = uint8((exp(double(I)) .^ (log(L) / (L-1))) - 1);
subplot(1, 2, 1); imshow(I); title('Input');
subplot(1, 2, 2); imshow(exp_I); title('\itexp(I)');