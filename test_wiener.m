I=im2double(rgb2gray(imread('TestImage.jpg')));
[r,c]=size(I);

Itest=zeros(r,c);
Itest(r/2,c/2)=1;

h=fspecial('gaussian',[11 11], 3);
Itestblur=imfilter(Itest,h);
H=fft2(Itestblur)./fft2(Itest);

Iblur=imfilter(I,h);

Iest=wiener_filter(Iblur,H,.01);
imshow(Iest)
figure
imshow(Iblur)