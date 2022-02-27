I = truecolorload("./images/lena.bmp");
f = lowpass(I(:,:,1), glpf(25, {512, 512}));
imshow(f, [])