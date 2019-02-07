h1=figure;
h2=figure;
n=8;
FI=zeros(n);
a=n*n;
m=n/2+1;
mm=n+2;
for u=1:m
    for v=1:m
        FI(u,v)=a;
        if u>1
            FI(mm-u,v)=a;
        end
        if v>1
            FI(u,mm-v)=a;
            if u>1
                FI(mm-u,mm-v)=a;
            end
        end
        figure(h1);
        subplot(m,m,(v-1)*m+u);
        imshow(fftshift(FI./a));
        figure(h2);
        subplot(m,m,(v-1)*m+u);
        imshow(real(ifft2(FI)));
        FI(u,v)=0;
        if u>1
            FI(mm-u,v)=0;
        end
        if v>1
            FI(u,mm-v)=0;
            if u>1
                FI(mm-u,mm-v)=0;
            end
        end
    end
end
