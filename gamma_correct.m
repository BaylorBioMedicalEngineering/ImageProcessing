function Ic=gamma_correct(I,gamma)
    Imax=max(max(I));
    Ic=I;
    if Imax>1
        Ic=Ic./Imax;
    end
    Ic=Ic.^gamma;
end
        