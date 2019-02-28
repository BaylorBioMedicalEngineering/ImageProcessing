function I = constrained_filter(Ib,H,m,v,a)
    [rows,cols]=size(Ib);
    fIb=fft2(Ib);
    
    Hstar=conj(H);
    H2=abs(H).^2;
    %Laplacian measures the second derivative
    %fft of Lap with padding
    Laplacian=   ?????;
    P=fft2(Laplacian,rows,cols);
    P2=abs(P).^2;
    
    % estimated noise contributions
    eta2=sqrt(rows*cols)*(m^2+v*3);
    
    %Starting value of gamma
    gamma=.1;
    % how to change gamma
    gamma_frac=0.5;
    %iteration setup
    condition=1;
    steps=0;
    max_steps=50;
    while condition
        %Calculate and apply filter
        
        %check quality by calculating the residual
        
        
        %give feedback on how we are doing
        disp(['noise = ',num2str(eta2),'   residual = ',num2str(r2),'   gamma = ',num2str(gamma)])
        %adjust gamma
        if eta2-r2>a
            gamma=gamma*(1 + or - ?  gamma_frac);
        elseif r2-eta2>a
            gamma=gamma*(1  + or - ?  gamma_frac);
        else
            condition=0;
        end
        steps=steps+1;
        if steps>max_steps
            condition=0;
        end
    end
    % image desired
    I=ifft2(fI);
end