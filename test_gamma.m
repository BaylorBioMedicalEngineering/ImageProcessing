I_color=imread('light.png');
I = im2double(rgb2gray(I_color));

gamma=10;
Ib=gamma_correct(I,gamma);

gamma=.1;
Ic=gamma_correct(Ib,gamma);
Is=gamma_correct(I,gamma);

Ineg=negative_image(I);
figure;
imshow(Ineg);
title('Inverted');

figure;
subplot(2,2,1),imshow(I),title('Original');
subplot(2,2,2),imshow(Ib),title('Gamma=10');
subplot(2,2,3),imshow(Is),title('Gamma=.1');
subplot(2,2,4),imshow(Ic),title('Restored');