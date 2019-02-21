function [Iamf]=adaptive_mean_filter(I,rad)
  [r,c]=size(I);
  vg=var(reshape(I,1,r*c));
  szreg=(2*rad+1)^2;
  Iamf=I;
  for row=1+rad:r-rad
      for col=1+rad:c-rad
          reg=reshape(I(row-rad:row+rad,col-rad:col+rad),1,szreg);
          mu=mean(reg);
          vl=var(reg);
          a=max(min(1,vg/vl),0);
          Iamf(row,col)=(1-a)*I(row,col)+a*mu;
      end
  end
end