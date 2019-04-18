Ia=mat2gray(ones(100,1)*(1:255));

Ib=mat2gray((1:255)'*(1:255));

Ic=mat2gray(ones(255,1)*logspace(0,5,255));

Id=rand(255,255);
Id(50:70,50:70)=ones(21,21);
Id(150:170,50:70)=ones(21,21)*2/3;
Id(50:70,150:170)=ones(21,21)/3;
Id(150:170,150:170)=zeros(21,21);
Id=mat2gray(Id);

Ie=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
     0 1 0 1 0 1 1 1 0 1 0 0 0 1 0 0 0 0 1 0 0
     0 1 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0
     0 1 1 1 0 1 1 1 0 1 0 0 0 1 0 0 0 1 0 1 0
     0 1 0 1 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 1 0
     0 1 0 1 0 1 1 1 0 1 1 1 0 1 1 1 0 0 1 0 0
     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Ie=imresize(Ie,30,'nearest');
[m,n]=size(Ie);
Ie=Ie+(~Ie).*(ones(m,1)*(0:1/(n-1):1));
Ie=mat2gray(Ie);

a=255;
b=175;
c=125;
d=75;
Ig=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 a a a a a a a a a a c c c c c c c c c 0 0
    0 0 a b a b a b a b a a c d d c c d d c c 0 0
    0 0 a b b b a b a b a a c d d c c d d c c 0 0
    0 0 a b b b a b a b a a c c c d d c c c c 0 0
    0 0 a a a a a a a a a a c c c d d c c c c 0 0
    0 0 a b b b a a b a a a c d d c c d d c c 0 0
    0 0 a a a a a a b b a a c d d c c d d c c 0 0
    0 0 a b b b a a b b b a c c c d d c c c c 0 0
    0 0 a a a a a a a a a a c c c d d c c c c 0 0
    0 0 a a a a a a a a a a c c c c c c c c c 0 0
    0 0 c c c c c c c c c c c c c a a a a a a 0 0
    0 0 c d d d c d d c c c d c c a a b b a a 0 0
    0 0 c d c c c d c d c d c d c a b a a b a 0 0
    0 0 c d d d c d c d c d c c c a b a a b a 0 0
    0 0 c c c d c d c d c d c d c a a b b a a 0 0
    0 0 c d d d c d d c c c d d c a a a a a a 0 0
    0 0 c c c c c c c c c c c c c a a a a a a 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
Ig=mat2gray(Ig);
I1=im2double(rgb2gray(imread('TestImage.jpg')));
I2=im2double(rgb2gray(imread('TestImage2.jpg')));
I3=im2double(imread('blobs.png'));
I4=im2double(imread('blobs2.png'));
I5=im2double(rgb2gray(imread('light.png')));
I6=im2double(imread('shapes.png'));

figure;
subplot(3,4,1), imshow(Ia),title('Ia');
subplot(3,4,2), imshow(Ib),title('Ib');
subplot(3,4,3), imshow(Ic),title('Ic');
subplot(3,4,4), imshow(Id),title('Id');
subplot(3,4,5), imshow(Ie),title('Ie');
subplot(3,4,6), imshow(Ig),title('Ig');
subplot(3,4,7), imshow(I1),title('I1');
subplot(3,4,8), imshow(I2),title('I2');
subplot(3,4,9), imshow(I3),title('I3');
subplot(3,4,10), imshow(I4),title('I4');
subplot(3,4,11), imshow(I5),title('I5');
subplot(3,4,12), imshow(I6),title('I6');