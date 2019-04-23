[FileName,PathName] = uigetfile('*.jpg;*.png','Select image');
if isequal(FileName,0)
   I=I6;
else
   namelen=length(FileName);
   if (FileName(namelen-2:namelen)=='png')
     I=im2double(imread(fullfile(PathName, FileName)));
   else
     I=im2double(rgb2gray(imread(fullfile(PathName, FileName))));
   end
end
steps=16;
deriv_type=2;
connectivity=5;
W=watershed_flood(I,steps,deriv_type,connectivity);



cmprism=prism(10000);
cmprism=[0 0 0
         cmprism];
figure, imshow(W+1,cmprism);
figure, imshow(I);