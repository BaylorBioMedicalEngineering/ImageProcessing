function [r,c,v]=imagemax(I)
    [Rv,Rind]=max(I);
    [Cv,Cind]=max(Rv);
    c=Cind;
    r=Rind(c);
    v=Cv;
end