          I=imread('king_david_palace.jpg');
          figure; imshow(I)
          Id=im2double(rgb2gray(I));
          FId=fft2(Id);
          FIds=fftshift(FId);
          %figure, imshow(log(1+abs(FIds)),[]);
          %figure, imshow(angle(FIds),[]);
          gamma=1.5;
          
          Irect=rgb2gray(imread('rect.png'));
          %figure, imshow(Irect);
          Irectd=im2double(Irect);
          FIrectd=fft2(Irectd);
          %figure, imshow(log(1+abs(fftshift(FIrectd))));
          Irotrectd=imrotate(Irectd,33);
          FIrotrectd=fft2(Irotrectd);
          figure;
          subplot(2,3,1), imshow(Irect); title('Original');
          subplot(2,3,2), imshow(gamma_correct(abs(fftshift(FIrectd)),gamma)); title('Magnitude');
          subplot(2,3,3), imshow(gamma_correct(angle(fftshift(FIrectd)),gamma)); title('Phase');
          subplot(2,3,4), imshow(Irotrectd);
          subplot(2,3,5), imshow(gamma_correct(abs(fftshift(FIrotrectd)),gamma));
          subplot(2,3,6), imshow(gamma_correct(angle(fftshift(FIrotrectd)),gamma));
          %figure, imshow(log(1+abs(fftshift(FIrotrectd))));
          %figure, imshow(abs(fftshift(FIrotrectd)));
          
          Isr=shift_image_leftup(Irect,1,0);
          FIsrc=fft2(Isr);
          figure;
          subplot(2,3,1), imshow(Irect); title('Original');
          subplot(2,3,2), imshow(gamma_correct(abs(fftshift(FIrectd)),gamma)); title('Magnitude');
          subplot(2,3,3), imshow(gamma_correct(angle(fftshift(FIrectd)),gamma)); title('Phase');
          subplot(2,3,4), imshow(Isr);
          subplot(2,3,5), imshow(gamma_correct(abs(fftshift(FIsrc)),gamma));
          subplot(2,3,6), imshow(gamma_correct(angle(fftshift(FIsrc)),gamma));
          
          
          