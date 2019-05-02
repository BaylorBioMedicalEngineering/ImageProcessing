
% set these

w1=.6;
w2=.4;
%w2=(1-w1)/(2*w1-1);%uncomment to make orthogonal weights


I1=im2double(rgb2gray(imread('ICADesert.jpg')));
I2=im2double(rgb2gray(imread('ICAHydrangeas.jpg')));
Ist1=reshape(I1,1,1024*768);
Ist2=reshape(I2,1,1024*768);
Ist=[Ist1;Ist2];


Wt=[w1 1-w1
    w2 1-w2];
Ix=Wt*Ist;
[Is]=fastica(Ix);
Is1=Is(1,:);
Is2=Is(2,:);
figure;
subplot(2,3,1), imshow(mat2gray(reshape(Ix(1,:),768,1024))),title('Mixed')
subplot(2,3,4), imshow(mat2gray(reshape(Ix(2,:),768,1024)))
subplot(2,3,2), imshow(mat2gray(reshape(Is1,768,1024))),title('ICA');
subplot(2,3,5), imshow(mat2gray(reshape(-Is2,768,1024)))
subplot(2,3,3), imshow(mat2gray(reshape(Ist(1,:),768,1024))),title('True')
subplot(2,3,6), imshow(mat2gray(reshape(Ist(2,:),768,1024)))

