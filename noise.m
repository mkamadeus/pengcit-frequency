[img, m] = truecolorload("./images/boat.bmp");

subplot(3,2,1);
imshow(img);title("original");

subplot(3,2,2);
[fimg, shiftedfimg] = spatial2freq(img);
imshow(shiftedfimg, []);title("og spectrum");

subplot(3,2,3);
noised = makeperiodicnoise(img, 1/5, 1/5);
imshow(noised);title("noised og");

subplot(3,2,4);
[fnoised, shiftedfnoised] = spatial2freq(fnoised);
disp(shiftedfnoised);
imshow(shiftedfnoised, []);title("noised og spectrum");
