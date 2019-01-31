function In=negative_image(I);
    Iclass=class(I);
    if strcmp(Iclass,'uint8')
        Imax=2^8-1;
    end
    if strcmp(Iclass,'uint16')
        Imax=2^16-1;
    end
    if strcmp(Iclass,'int16')
        Imax=2^15-1;
    end
    if strcmp(Iclass,'double')
        Imax=1;
    end
    if strcmp(Iclass,'single')
        Imax=1;
    end
    if strcmp(Iclass,'logical')
        Imax=1;
    end
    In=Imax-I;
end