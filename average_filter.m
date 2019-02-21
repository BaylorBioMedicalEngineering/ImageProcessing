function [Iavg]=average_filter(I,rad);
    [r,c]=size(I);
    Iavg=I;
    for row=1+rad:r-rad
        for col=1+rad:c-rad
            avg=0;
            for rreg=-rad:rad
                for creg=-rad:rad
                    avg=avg+I(row+rreg,col+creg);
                end
            end
            Iavg(row,col)=avg;
        end
    end
end
