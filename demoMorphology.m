%morphology
I1=im2double(rgb2gray(imread('TestImage.jpg')));
I2=im2double(rgb2gray(imread('TestImage2.jpg')));

I=I1;

se1 = strel('square',3)
se2 = strel('line',5,90)
se3 = strel('disk',2)
se=se1;

Id=imdilate(I,se);
Ide=imerode(Id,se);
Ic=imclose(I,se);

figure, subplot(2,2,1),imshow(I),title('original');
subplot(2,2,2), imshow(Id),title('dialate');
subplot(2,2,3), imshow(Ide),title('dialate then erode');
subplot(2,2,4), imshow(Ic),title('close');
norm(Ide-Ic)





Ie=imerode(I,se);
Ied=imdilate(Ie,se);
Io=imopen(I,se);

figure, subplot(2,2,1),imshow(I),title('original');
subplot(2,2,2), imshow(Ie),title('erode');
subplot(2,2,3), imshow(Ied),title('erode then dialate');
subplot(2,2,4), imshow(Io),title('open');
norm(Ied-Io)