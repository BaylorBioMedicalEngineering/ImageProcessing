I=im2double(rgb2gray(imread('TestImage.jpg')));
[r,c]=size(I);


num_bins=20;
m=0;
v=10^(-3);
a=1;


Itest=zeros(r,c);
Itest(r/2,c/2)=1;

h=fspecial('gaussian',[11 11], 3);
Itestblur=imfilter(Itest,h);
H=fft2(Itestblur)./fft2(Itest);

Iblur=imfilter(I,h);
Iblurn=imnoise(Iblur,'gaussian',m,v);

Iest=constrained_filter(Iblurn,H,m,v,a);
imshow(Iest)
figure
imshow(Iblurn)
