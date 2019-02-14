function findfftxy(Ipart,Iwhole);
    [mp,np]=size(Ipart);
    [mw,nw]=size(Iwhole);
    if (mp<mw)
        Ipart=[Ipart
               zeros(???,???)];
    end
    if (np<nw)
        Ipart=[Ipart zeros(???,???)];
    end
    
    
    FIpart=fft2(Ipart);
    FIwhole=fft2(Iwhole);
    FItrans=FIwhole./FIpart;
    Itrans=ifft2(FItrans);
    [r,c,v]=imagemax(Itrans);

    gamma=.7;
    gammaf=gamma/5;
    
    
    figure;
    imshow(gamma_correct(Iwhole,gamma));
    hold on;
    rectangle('Position',([c-1,r-1,np,mp]),'EdgeColor','w');hold off;
    
    figure;
    subplot(3,3,1), imshow(gamma_correct(Ipart,gamma));
    subplot(3,3,2), imshow(gamma_correct(Iwhole,gamma));
    subplot(3,3,3), imshow(gamma_correct(abs(Itrans),gamma));
    subplot(3,3,4), imshow(gamma_correct(real(fftshift(FIpart)),gammaf));
    subplot(3,3,5), imshow(gamma_correct(real(fftshift(FIwhole)),gammaf));
    subplot(3,3,6), imshow(gamma_correct(real(FItrans),gamma));
    subplot(3,3,7), imshow(gamma_correct(imag(fftshift(FIpart)),gammaf));
    subplot(3,3,8), imshow(gamma_correct(imag(fftshift(FIwhole)),gammaf));
    subplot(3,3,9), imshow(gamma_correct(imag(FItrans),gamma));

    disp(r-1);
    disp(c-1);
end