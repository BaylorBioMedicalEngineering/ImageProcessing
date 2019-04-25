v=5;
s=10;
bgr=10;
bgs=0;
objr=10;
objs=5;
[I1,I2,I3,I4]=make_moving_pics(v,s,bgr,bgs,objr,objs);

figure,imshow(mat2gray(I1))
figure,imshow(mat2gray(I2))
figure,imshow(mat2gray(I3))
figure,imshow(mat2gray(I4))

ID1_2=I1-I2;
figure,imshow(mat2gray(ID1_2))
ID1_3=I1-I3;
figure,imshow(mat2gray(ID1_3))
ID1_4=I1-I4;
figure,imshow(mat2gray(ID1_4))
ID2_3=I2-I3;
figure,imshow(mat2gray(ID2_3))
ID2_4=I2-I4;
figure,imshow(mat2gray(ID2_4))
ID3_4=I3-I4;
figure,imshow(mat2gray(ID3_4))

figure,imshow(mat2gray(ID1_2.*(ID1_2>0)))
figure,imshow(mat2gray(ID1_2.*(ID1_2<0)))

if objr>0 || bgr>0
    R2_3=(ID2_3 ~= 0);
    R3_4=(ID3_4 ~= 0);  
    R1_3=(ID1_2 ~= 0);
    Re2=(R2_3>R3_4);
    figure,imshow(mat2gray(Re2))
    Re3=(R2_3>R1_2);
    figure,imshow(mat2gray(Re3))
    RI2_3=R2_3>(Re2 | Re3);
    figure,imshow(mat2gray(RI2_3))
    R2=Re2+RI2_3;
    se=[1 1 1
        1 1 1
        1 1 1];
    R2border=imdilate(R2,se)-R2;
    I_2=mat2gray(I2);
    Ib_2=mat2gray(I2+3.*R2border);
    figure,imshow(cat(3,Ib_2,I_2,I_2))
    %imshow(cat(3,I_2,I_2,I_2))
end