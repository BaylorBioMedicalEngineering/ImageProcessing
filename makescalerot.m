function [Ipad,Irth]=makescalerot(I,dr,dtheata)
    Irth=imrotate(imresize(I,dr),dtheata);
    [R,C]=size(Irth);
    Ipad=zeros(R,C);
    [r,c]=size(I);
    rb=floor((R-r)/2);
    cb=floor((C-c)/2);
    Ipad(rb+1:rb+r,cb+1:cb+c)=I;
end