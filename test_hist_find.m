I=rand(100,100);
I(35:42,79:88)=0;
figure, imshow(I);

Ir=hist_reg_diff(I,10,1);

Irgb=zeros(100,100,3);
Irgb(1:100,1:100,1)=min((I+(Ir>.85)),1);
Irgb(1:100,1:100,2)=I;
Irgb(1:100,1:100,3)=I;
figure, imshow(Irgb);
