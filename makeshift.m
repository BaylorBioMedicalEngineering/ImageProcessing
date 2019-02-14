function [Ipad,Ishift]=makeshift(I,dr,dc)
    [r,c]=size(I);
    R=r+dr;
    C=c+dc;
    Ipad=zeros(R,C);
    Ishift=zeros(R,C);
    Ipad(1:r,1:c)=I;
    Ishift(1+dr:R,1+dc:C)=I;
end
    