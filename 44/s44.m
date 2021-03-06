% A = imread('saturn.png');
A = imread('C:\Users\Marjan\Documents\MATLAB\34\39\Marjan.jpg');
B = rgb2gray(A);
sz = size(B,1)*size(B,2);


%Add gaussian noise with mean 0 and variance 0.005
B = imnoise(B,'gaussian',0,0.005);
figure,imshow(B); title('Image with gaussian noise');

 B = double(B);

%Define the window size mxn
M = 5;
N = 5;

%Pad the matrix with zeros on all sides
C = padarray(B,[floor(M/2),floor(N/2)]);


lvar = zeros([size(B,1) size(B,2)]);
lmean = zeros([size(B,1) size(B,2)]);
temp = zeros([size(B,1) size(B,2)]);
NewImg = zeros([size(B,1) size(B,2)]);

for i = 1:size(C,1)-(M-1)
    for j = 1:size(C,2)-(N-1)
        
        
        temp = C(i:i+(M-1),j:j+(N-1));
        tmp =  temp(:);
             %Find the local mean and local variance for the local region        
        lmean(i,j) = mean(tmp);
        lvar(i,j) = mean(tmp.^2)-mean(tmp).^2;
        
    end
end

%Noise variance and average of the local variance
nvar = sum(lvar(:))/sz;

%If noise_variance > local_variance then local_variance=noise_variance
 lvar = max(lvar,nvar);     

 %Final_Image = B- (noise variance/local variance)*(B-local_mean);
 NewImg = nvar./lvar;
 NewImg = NewImg.*(B-lmean);
 NewImg = B-NewImg;

 %Convert the image to uint8 format.
 NewImg = uint8(NewImg);
figure,imshow(NewImg);title('Restored Image using Adaptive Local filter');