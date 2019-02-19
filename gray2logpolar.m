function Im = gray2logpolar(I, ntheta, nrad)

[rows, cols] = size(I);

% Increments in radius and theta
deltatheta = 2*pi/ntheta;
deltalogr=log(sqrt(rows^2+cols^2)/2)/nrad;
[radius,theta] = meshgrid(exp([0:nrad-1]*deltalogr),[0:ntheta-1]*deltatheta);   

% map r,theta to x,y in image for interpolation
cx=(1+cols)/2;
cy=(1+rows)/2;
xi = radius.*cos(theta) + cx;  
yi = radius.*sin(theta) + cy;  

[x,y] = meshgrid([1:cols],[1:rows]);

Im=interp2(x, y, double(I), xi, yi,'cubic');
Imask=isnan(Im);
Im(Imask)=0;
Im = mat2gray(Im);

end