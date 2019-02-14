function demofftxy(I,dr,dc);
    [Ipad,Ishift]=makeshift(I,dr,dc);
    FIpad=fft2(Ipad);
    FIshift=fft2(Ishift);
    FItrans=FIshift./FIpad;
    Itrans=ifft2(FItrans);
    [r,c,v]=imagemax(Itrans);
    
    gamma=.7;
    gammaf=gamma/5;
    figure;
    subplot(3,3,1), imshow(gamma_correct(Ipad,gamma));
    subplot(3,3,2), imshow(gamma_correct(Ishift,gamma));
    subplot(3,3,3), imshow(gamma_correct(abs(Itrans),gamma));
    subplot(3,3,4), imshow(gamma_correct(abs(fftshift(FIpad)),gammaf));
    subplot(3,3,5), imshow(gamma_correct(abs(fftshift(FIshift)),gammaf));
    subplot(3,3,6), imshow(gamma_correct(abs(FItrans),gamma));
    subplot(3,3,7), imshow(gamma_correct(angle(fftshift(FIpad)),gammaf));
    subplot(3,3,8), imshow(gamma_correct(angle(fftshift(FIshift)),gammaf));
    subplot(3,3,9), imshow(gamma_correct(angle(FItrans),gamma));
    
    disp(r-1);
    disp(c-1);
end