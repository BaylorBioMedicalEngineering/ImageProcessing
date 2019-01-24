I=rgb2gray(imread('O0YQjdH.jpg'));
figure, subplot(2,3,1), imshow(I), title('Original');

Irn=imrotate(I,22,'nearest');
subplot(2,3,2), imshow(Irn), title('Rotate Nearest');

Irl=imrotate(I,22,'bilinear');
subplot(2,3,3), imshow(Irl), title('Rotate Nearest');

tform=affine2d([1 0 0;1 1 0;0 0 1]);
Isx=imwarp(I,tform);
subplot(2,3,4), imshow(Isx), title('Shear X');

tform=affine2d([1 1 0;0 1 0;0 0 1]);
Isy=imwarp(I,tform);
subplot(2,3,5), imshow(Isy), title('Shear Y');

tform=affine2d([1 0.5 0;0.5 1 0;0 0 1]);
Isb=imwarp(I,tform);
subplot(2,3,6), imshow(Isb), title('Shear XY');

