I1=im2double(rgb2gray(imread('TestImage.jpg')));
I2=im2double(imread('shapes.png'));
I3=im2bw(I2, graythresh(I2));

I=I2;

urf=[0 0 0
     1 1 0
     1 1 0];
urb=[0 1 1
     0 0 1
     0 0 0];
fgur = strel(urf);
bgur=strel(urb);

ulf=[0 0 0
     0 1 1
     0 1 1];
ulb=[1 1 0
     1 0 0
     0 0 0];
fgul = strel(ulf);
bgul=strel(ulb);

llf=[0 1 1
     0 1 1
     0 0 0];
llb=[0 0 0
     1 0 0
     1 1 0];
fgll = strel(llf);
bgll=strel(llb);

lrf=[1 1 0
     1 1 0
     0 0 0];
lrb=[0 0 0
     0 0 1
     0 1 1];
fglr = strel(lrf);
bglr=strel(lrb);

Iur=bwhitmiss(I,fgur,bgur);
Iul=bwhitmiss(I,fgul,bgul);
Ill=bwhitmiss(I,fgll,bgll);
Ilr=bwhitmiss(I,fglr,bglr);
Isum=mat2gray(I+2.*(Iur+Iul+Ill+Ilr));

figure, subplot(2,3,1),imshow(I),title('original');
subplot(2,3,2),imshow(Iul),title('UL');
subplot(2,3,3),imshow(Iur),title('UR');
subplot(2,3,4),imshow(Isum),title('combined');
subplot(2,3,5),imshow(Ill),title('LL');
subplot(2,3,6),imshow(Ilr),title('LR');
