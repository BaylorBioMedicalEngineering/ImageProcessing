function [I1,I2,I3,I4]=make_moving_pics(v,s,bgr,bgs,objr,objs);

Ib=rand(100,100).*bgr+bgs;
Ib(20:25,30:40)=10;
Ib(25:35,60:70)=8;
Ib(70:80,50:65)=6;
Ib(80:85,80:90)=4;
Iobj=rand(10,10).*objr+objs;

I1=Ib;
p=s;
I1(50:59,p:p+9)=Iobj;

I2=Ib;
p=p+v;
I2(50:59,p:p+9)=Iobj;

I3=Ib;
p=p+v;
I3(50:59,p:p+9)=Iobj;

I4=Ib;
p=p+v;
I4(50:59,p:p+9)=Iobj;
end