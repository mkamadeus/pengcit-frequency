function res = fixperiodicnoise(img, xranges, yranges)
    if (size(xranges) != size(yranges))
        error('range arrays not equal not equal in size')
    end

    [fimg, ~] = spatial2freq(img);
    fimg = fftshift(fimg);

    for r = 1:size(xranges)
        xr = xranges{r};
        yr = yranges{r};
        fimg(xr, yr) = 0;
    end

    fimg = real(ifft2(ifftshift(fimg)));
    res = fimg;
end