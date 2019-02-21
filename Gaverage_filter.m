function [Iavg]=Gaverage_filter(I,rad);
    [r,c]=size(I);
    Iavg=I;
    irsize=1/((2*rad+1)^2);
    for row=1+rad:r-rad
        for col=1+rad:c-rad
            avg=1;
            for rreg=-rad:rad
                for creg=-rad:rad
                    avg=avg*I(row+rreg,col+creg);
                end
            end
            Iavg(row,col)=avg^irsize;
        end
    end
end
