function [Iavg]=median_filter(I,rad);
    [r,c]=size(I);
    Iavg=I;
    pt=(2*rad+1)^2/2+.5;
    for row=1+rad:r-rad
        for col=1+rad:c-rad
            mylist=sort(I(row-rad:row+rad,col-rad:col+rad));
            Iavg(row,col)=mylist(pt);
        end
    end
end