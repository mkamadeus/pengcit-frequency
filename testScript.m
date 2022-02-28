I = truecolorload("./images/Lena.bmp");
noised = makeperiodicnoise(I, 1/5, 1/5);
imshow(noised)