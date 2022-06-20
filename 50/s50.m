% Ioriginal = imread('cameraman.tif');
Ioriginal= rgb2gray(imread('C:\Users\Marjan\Documents\MATLAB\49\Marjan.jpg'));
figure; subplot(2,4,1),imshow(Ioriginal)
title('Original Image')
PSF = fspecial('motion',21,11);
Idouble = im2double(Ioriginal);
blurred = imfilter(Idouble,PSF,'conv','circular');
subplot(2,4,2),imshow(blurred)
title('Blurred Image')
%new
noise_mean = 0;
noise_var = 0.0001;
blurred_noisy = imnoise(blurred,'gaussian',noise_mean,noise_var);
subplot(2,4,3),imshow(blurred_noisy)
title('Blurred and Noisy Image')
wnr2 = deconvwnr(blurred_noisy,PSF);
subplot(2,4,4),imshow(wnr2)
title('Restoration of Blurred Noisy Image (NSR = 0)')
signal_var = var(Idouble(:));
NSR = noise_var / signal_var;
wnr3 = deconvwnr(blurred_noisy,PSF,NSR);
subplot(2,4,5),imshow(wnr3)
title('Restoration of Blurred Noisy Image (Estimated NSR)')