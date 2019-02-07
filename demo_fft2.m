Idavid=rgb2gray(imread('king_david_palace.jpg'));
Irect=rgb2gray(imread('king_david_rect.png'));
Irects=rgb2gray(imread('king_david_rectsm.png'));
Irectss=rgb2gray(imread('king_david_rectss.png'));

Imash_rdss=image_mag_phase_mash(Irectss,Idavid);
Imash_drss=image_mag_phase_mash(Idavid,Irectss);
figure;
subplot(2,2,1), imshow(im2double(Idavid));
title('phase of david');
ylabel('mag of david');
subplot(2,2,2), imshow(Imash_drss);
title('phase of rect');
subplot(2,2,3), imshow(Imash_rdss);
ylabel('mag of rect');
subplot(2,2,4), imshow(im2double(Irectss));

Imash_rds=image_mag_phase_mash(Irects,Idavid);
Imash_drs=image_mag_phase_mash(Idavid,Irects);
figure;
subplot(2,2,1), imshow(im2double(Idavid));
title('phase of david');
ylabel('mag of david');
subplot(2,2,2), imshow(Imash_drs);
title('phase of rect');
subplot(2,2,3), imshow(Imash_rds);
ylabel('mag of rect');
subplot(2,2,4), imshow(im2double(Irects));


Imash_rd=image_mag_phase_mash(Irect,Idavid);
Imash_dr=image_mag_phase_mash(Idavid,Irect);
figure;
subplot(2,2,1), imshow(im2double(Idavid));
title('phase of david');
ylabel('mag of david');
subplot(2,2,2), imshow(Imash_dr);
title('phase of rect');
subplot(2,2,3), imshow(Imash_rd);
ylabel('mag of rect');
subplot(2,2,4), imshow(im2double(Irect));