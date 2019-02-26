function I = wiener_filter(Iblur,H,noise)
    Hstar=conj(H);
    G=Hstar./(Hstar.*H+noise);
    I=ifft2(fft2(Iblur).*G);
end