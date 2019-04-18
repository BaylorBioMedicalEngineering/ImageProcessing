I=mat2gray(I4);
[rows,cols]=size(I);
R=zeros(rows,cols);
if size(I)==size(Ig)
  if I==Ig
    R(5,5)=1;
    R(10,11)=1;
    R(14,19)=1;
  end
elseif size(I)==size(Ie)
  if I==Ie
    R(62,44)=1;
    R(105,182)=1;
    R(165,343)=1;
    R(52,403)=1;
    R(83,518)=1;
  end
elseif size(I)==size(I4)
  if I==mat2gray(I4)
    n=80;
    x=floor(rand(1,n)*cols+1);
    y=floor(rand(1,n)*rows+1);
    candidates=zeros(1,n);
    for index=1:n
        candidates(index)=I(y(index),x(index));
    end
    step=.1;
    H=histcounts(candidates,0:step:1);
    %[num,bin]=max(H);%can choose by biggest peak
    bin=1;
    left=step*(bin-1);
    right=step*bin;
    flag=(candidates>=left)&(candidates<=right);
    X=x(flag);
    Y=y(flag);
    for index=1:max(size(X))
        R(Y(index),X(index))=1;
    end
  end
end
a=1;
t=.1;
J=region_grow(I,R,a,t);
imshow(mat2gray(I+J+R))