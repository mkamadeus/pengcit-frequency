img = truecolorload("./images/boat.bmp");
img = img(:, :, 1);

subplot(3,2,1);
imshow(img, []);title("original");

subplot(3,2,2);
[fimg, shiftedfimg] = spatial2freq(img);
% disp(fimg);
% disp(shiftedfimg);
imshow(im2double(shiftedfimg), []);title("og spectrum");

subplot(3,2,3);
noised = makeperiodicnoise(img, 1/10, 1/10);
imshow(noised, []);title("noised og");

subplot(3,2,4);
[fnoised, shiftedfnoised] = spatial2freq(noised);
s = size(shiftedfnoised)
imshow(im2double(shiftedfnoised), []);title("noised og spectrum");

disp(im2double(shiftedfnoised(s(1)/2 - 50:s(1)/2, s(2)/2-50:s(2)/2)));
disp(sort(shiftedfnoised(:)));
