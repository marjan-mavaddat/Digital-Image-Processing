I=imread('tire.tif');

J=imadjust(I,[],[],1);
J2=imadjust(I,[],[],3);
J3=imadjust(I,[],[],0.4);
imshow(J);
figure,imshow(J2);
figure,imshow(J3);