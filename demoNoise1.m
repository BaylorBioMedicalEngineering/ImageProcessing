I=im2double(rgb2gray(imread('O0YQjdH.jpg')));
[In,Ir,Ig,Ie,Iu,Isp]=imnoisy(I);
[rows,cols]=size(I);


%average
figure;
subplot(2,3,1), imshow(mat2gray(average_filter(In,1))), title('Normal');
title('Arithmetic Mean Filter');
subplot(2,3,2), imshow(mat2gray(average_filter(Ir,1))), title('Rayleigh');
subplot(2,3,3), imshow(mat2gray(average_filter(Ig,1))), title('Gamma');
subplot(2,3,4), imshow(mat2gray(average_filter(Ie,1))), title('Exponential');
subplot(2,3,5), imshow(mat2gray(average_filter(Iu,1))), title('Uniform');
subplot(2,3,6), imshow(mat2gray(average_filter(Isp,1))), title('SnP');


%geo average
figure;
subplot(2,3,1), imshow(mat2gray(Gaverage_filter(In,1))), title('Normal');
title('Geometric Mean Filter');
subplot(2,3,2), imshow(mat2gray(Gaverage_filter(Ir,1))), title('Rayleigh');
subplot(2,3,3), imshow(mat2gray(Gaverage_filter(Ig,1))), title('Gamma');
subplot(2,3,4), imshow(mat2gray(Gaverage_filter(Ie,1))), title('Exponential');
subplot(2,3,5), imshow(mat2gray(Gaverage_filter(Iu,1))), title('Uniform');
subplot(2,3,6), imshow(mat2gray(Gaverage_filter(Isp,1))), title('SnP');

%harmonic average
figure;
subplot(2,3,1), imshow(mat2gray(Haverage_filter(In,1))), title('Normal');
title('Harmonic Mean Filter');
subplot(2,3,2), imshow(mat2gray(Haverage_filter(Ir,1))), title('Rayleigh');
subplot(2,3,3), imshow(mat2gray(Haverage_filter(Ig,1))), title('Gamma');
subplot(2,3,4), imshow(mat2gray(Haverage_filter(Ie,1))), title('Exponential');
subplot(2,3,5), imshow(mat2gray(Haverage_filter(Iu,1))), title('Uniform');
subplot(2,3,6), imshow(mat2gray(Haverage_filter(Isp,1))), title('SnP');

%median
figure;
subplot(2,3,1), imshow(mat2gray(median_filter(In,1))), title('Normal');
title('Median Filter');
subplot(2,3,2), imshow(mat2gray(median_filter(Ir,1))), title('Rayleigh');
subplot(2,3,3), imshow(mat2gray(median_filter(Ig,1))), title('Gamma');
subplot(2,3,4), imshow(mat2gray(median_filter(Ie,1))), title('Exponential');
subplot(2,3,5), imshow(mat2gray(median_filter(Iu,1))), title('Uniform');
subplot(2,3,6), imshow(mat2gray(median_filter(Isp,1))), title('SnP');



%adaptive mean
rad=3;
[Iamfn]=adaptive_mean_filter(In,rad);
[Iamfr]=adaptive_mean_filter(Ir,rad);
[Iamfg]=adaptive_mean_filter(Ig,rad);
[Iamfe]=adaptive_mean_filter(Ie,rad);
[Iamfu]=adaptive_mean_filter(Iu,rad);
[Iamfsp]=adaptive_mean_filter(Isp,rad);

figure;
subplot(2,3,1), imshow(mat2gray(Iamfn)), title('Normal');
title('adaptive Filter');
subplot(2,3,2), imshow(mat2gray(Iamfr)), title('Rayleigh');
subplot(2,3,3), imshow(mat2gray(Iamfg)), title('Gamma');
subplot(2,3,4), imshow(mat2gray(Iamfe)), title('Exponential');
subplot(2,3,5), imshow(mat2gray(Iamfu)), title('Uniform');
subplot(2,3,6), imshow(mat2gray(Iamfsp)), title('SnP');

