function [Iavg]=Haverage_filter(I,rad);
    [r,c]=size(I);
    Iavg=I;
    rsize=((2*rad+1)^2);
    for row=1+rad:r-rad
        for col=1+rad:c-rad
            avg=0;
            for rreg=-rad:rad
                for creg=-rad:rad
                    avg=avg+1/I(row+rreg,col+creg);
                end
            end
            Iavg(row,col)=rsize/avg;
        end
    end
end
