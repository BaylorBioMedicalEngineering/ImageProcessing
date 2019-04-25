[FileName,PathName] = uigetfile('*.jpg;*.png','Select first image in Sequence');
if isequal(FileName,0)
   %do nothing
else
   namelen=length(FileName);
   FileName2=FileName;
   FileName2(namelen-4)='2';
   if (FileName(namelen-2:namelen)=='png')
     I1=im2double(imread(fullfile(PathName, FileName)));
     I2=im2double(imread(fullfile(PathName, FileName2)));
   else
     I1=im2double(rgb2gray(imread(fullfile(PathName, FileName))));
     I2=im2double(rgb2gray(imread(fullfile(PathName, FileName2))));
   end
   figure;
   subplot(1,3,1), imshow(I1);
   subplot(1,3,2), imshow(I2);
   subplot(1,3,3), imshowpair(I1,I2);
end
