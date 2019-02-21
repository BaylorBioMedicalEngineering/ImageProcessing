I=zeros(100,100);
[In,Ir,Ig,Ie,Iu,Isp]=imnoisy(I);
[rows,cols]=size(I);
num_levels=100;

figure, subplot(1,2,1), imshow(In), title('Normal');
pdf_In=hist(reshape(In,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_In);

figure, subplot(1,2,1), imshow(Ir), title('Rayleigh');
pdf_Ir=hist(reshape(Ir,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_Ir);

figure, subplot(1,2,1), imshow(Ig), title('Gamma');
pdf_Ig=hist(reshape(Ig,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_Ig);

figure, subplot(1,2,1), imshow(Ie), title('Exponential');
pdf_Ie=hist(reshape(Ie,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_Ie);

figure, subplot(1,2,1), imshow(Iu), title('Uniform');
pdf_Iu=hist(reshape(Iu,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_Iu);

figure, subplot(1,2,1), imshow(Isp), title('SnP');
pdf_Isp=hist(reshape(Isp,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_Isp);

figure, subplot(1,2,1), imshow(I), title('Original');
pdf_I=hist(reshape(I,1,rows*cols),num_levels)/(rows*cols);
subplot(1,2,2), bar(pdf_I);

