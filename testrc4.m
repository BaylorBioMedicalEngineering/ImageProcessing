A= [ 1 1 1 0 0 0 1 0 0 0 0 1 0 1 1 1 0 0 1 1 1
     0 0 1 0 0 1 1 0 0 0 1 1 1 1 0 1 1 0 1 0 1
     1 1 1 0 1 1 1 0 1 1 0 0 0 0 0 0 1 0 1 0 1
     0 0 0 1 1 0 1 0 0 0 1 0 0 0 1 0 1 1 1 0 1
     0 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 0 0 0 1
     0 1 1 0 1 0 1 0 1 1 1 1 0 1 0 1 1 1 0 1 1
     1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 0 0 1 1 1 0];
bigA=imresize(A,10,'nearest');
imshow(bigA);
colormap(gray(10));
k = waitforbuttonpress;
bigA_color=region_color_4(bigA);
imshow(bigA_color);
colormap(gray(10));