function [In,Ir,Ig,Ie,Iu,Isp]=imnoisy(I);
[r,c]=size(I);

m=0.05;
s=.1;
n_norm = random('Normal',m,s,r,c);
In=abs(I+n_norm);

b=.05;
n_rayl = random('Rayleigh',b,r,c);
Ir=I+n_rayl;

binv=.5;
a=.05;
n_gam  = random('Gamma',binv,a,r,c);
Ig=I+n_gam;

ainv=.05;
n_exp  = random('Exponential',ainv,r,c);
Ie=I+n_exp;

low=0;
high=.1;
n_unif = random('Uniform',low,high,r,c);
Iu=I+n_unif;

Isp=imnoise(I,'salt & pepper',0.02);
end

