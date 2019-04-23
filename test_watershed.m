I=I6;
n=3;
s=.5;
W1=watershed(I);


fdx=[ 1 0 -1
       2 0 -2
       1 0 -1];
fdy=[ 1  2  1
       0  0  0
      -1 -2 -1];
fgb=fspecial('gaussian',[n n],s);
Dx=abs(imfilter(I,fdx));
Dy=abs(imfilter(I,fdy));
D=imfilter(Dx+Dy,fgb);
W2=watershed(D);


cmprism=prism(1000);
cmprism=[0 0 0
         cmprism];
figure, imshow(W2,cmprism);
figure, imshow(mat2gray(D));
figure, imshow(W1,cmprism);
figure, imshow(I);