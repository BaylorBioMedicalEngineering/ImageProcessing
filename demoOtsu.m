Ib=im2double(imread('blobs2.png'));
Is=[9 9 9 0 0 0
   9 9 9 9 0 0
   9 9 9 9 8 0
   0 9 9 8 7 6
   0 0 8 7 6 5
   0 0 0 6 5 4
   0 0 0 0 0 0
   0 0 0 0 0 0
   0 1 1 1 1 0
   0 1 1 1 1 0]./9;
L=7;
I=Ib;
[threshold,sep]=otsu(I,L); %our simple version
thresh=graythresh(I); %matlab fancy


figure;
subplot(1,2,1), imshow(mat2gray(I));
subplot(1,2,2), imshow(im2bw(mat2gray(I),threshold));

%se1 = strel('disk',40);

%It=imtophat(I,se1);

%figure;
%subplot(2,2,1), imshow(I);
%subplot(2,2,2), imshow(It);
%subplot(2,2,3), imshow(im2bw(I,graythresh(I)));
%subplot(2,2,4), imshow(im2bw(It,graythresh(It)));