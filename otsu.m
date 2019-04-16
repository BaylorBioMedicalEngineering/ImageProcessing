function [i,eta]=otsu(I,L)
[rows,cols]=size(I);

% 1) normalized histogram pik(k)
    [pik,edge]=histcounts(reshape(I,1,rows*cols),(0:L)./L);
    pik=pik./(rows*cols);

% 2) cumulative sums Pik(k)
    Pik=pik;
    for k=1:L-1
        Pik(k+1)=Pik(k)+?????;
    end

% 3) cumulative means, mk(k)
    mk=zeros(size(pik));
    for k=1:L-1
        mk(k+1)=mk(k)+??????;
    end
    
% 4) global mean, mg
    mg=mk(L);

% 5) between class variance, sigma2bk(k)
    sigma2bk=zeros(size(pik));
    for k=0:L-1
        ?????????
    end

% 6) i= argmax sigma2bk(k)
    figure, plot(0:L-1,sigma2bk);
    [val,i]=?????????
    disp(size(i))
% 7) eta = sigma2bk(i)/sigma2g
sigma2g=0;
for k=0:L-1
    sigma2g=sigma2g+pik(k+1)*(k/L-mg)^2;
end
eta = sigma2bk(i)/sigma2g;
i=i/L;