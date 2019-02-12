[f1,f2] = freqspace(512,'meshgrid');
Hd1 = zeros(512,512); 
d1 = sqrt(f1.^2 + f2.^2) < 0.0625;
Hd1(d1) = 1;
figure, mesh(f1,f2,Hd1)
hd1a=fftshift(ifft2(fftshift(Hd1)));
figure, mesh(f1,f2,hd1a)


Hd2 = zeros(512,512); 
d2 = sqrt(f1.^2 + f2.^2) < 0.125;
Hd2(d2) = 1;
figure, mesh(f1,f2,Hd2)


Hd3 = zeros(512,512); 
d3 = sqrt(f1.^2 + f2.^2) < 0.25;
Hd3(d3) = 1;
figure, mesh(f1,f2,Hd3)

Hd4=1-Hd1;
figure, mesh(f1,f2,Hd4)

Irect=rgb2gray(imread('rect.png'));
figure, imshow(Irect);
Irectd=im2double(Irect);
FIrectd=fft2(Irectd);
%figure, imshow(log(1+abs(fftshift(FIrectd))));
figure, imshow(abs(fftshift(FIrectd)));


Ifilt1=ifft2(ifftshift(Hd1.*fftshift(FIrectd)));
figure, imshow(Ifilt1)
Ifilt2=ifft2(ifftshift(Hd2.*fftshift(FIrectd)));
figure, imshow(Ifilt2)
Ifilt3=ifft2(ifftshift(Hd3.*fftshift(FIrectd)));
figure, imshow(Ifilt3)
Ifilt4=ifft2(ifftshift(Hd4.*fftshift(FIrectd)));
figure, imshow(Ifilt4)


