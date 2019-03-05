I = phantom('Modified Shepp-Logan', 300);
theta=0:2:179;
R=radon(I,theta);

Ibpn=iradon(R,theta,'none');
figure, subplot(2,3,1), imshow(mat2gray(Ibpn)), title('Backprojection');

Ibr=iradon(R,theta,'Ram-Lak');
subplot(2,3,2), imshow(Ibr), title('Ram-Lak Filtered Backprojection');

Ibs=iradon(R,theta,'Shepp-Logan');
subplot(2,3,3), imshow(Ibs), title('Shepp-Logan Filtered Backprojection');

Ibh=iradon(R,theta,'hamming');
subplot(2,3,4), imshow(Ibh), title('Hamming Windowed Filtered Backprojection');

Ibha=iradon(R,theta,'hann');
subplot(2,3,5), imshow(Ibha), title('Hann Windowed Filtered Backprojection');

Ibc=iradon(R,theta,'Cosine');
subplot(2,3,6), imshow(Ibc), title('Cosine Filtered Backprojection');


figure, imshow(I), title('Modified Shepp-Logan Phantom');