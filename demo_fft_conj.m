Idavid=im2double(rgb2gray(imread('king_david_palace.jpg')));

gamma=1.5;
figure; imshow(Idavid);title('Original');
FI=fft2(Idavid);
FIs=fftshift(FI);
figure; subplot(2,2,1);imshow(gamma_correct(abs(FIs),gamma));title('Mag FFT');
        subplot(2,2,2);imshow(gamma_correct(angle(FIs),gamma));title('Phase FFT');
FI2=conj(FI);
FI2s=fftshift(FI2);
        subplot(2,2,3);imshow(gamma_correct(abs(FI2s),gamma));title('Mag Conj FFT');
        subplot(2,2,4);imshow(gamma_correct(angle(FI2s),gamma));title('Phase Conj FFT');
I=ifft2(FI2);
figure; imshow(I);title('New');
