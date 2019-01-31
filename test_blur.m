I_color=imread('kids.jpg');
I = im2double(rgb2gray(I_color));

hsize = [5 5];
sigma = 0.5;
h = fspecial('gaussian', hsize,sigma);
Ib=imfilter(I,h,'conv');


figure;
imshow(Ib);
title('Blur');
figure;
imshow(I);
title('Original');
