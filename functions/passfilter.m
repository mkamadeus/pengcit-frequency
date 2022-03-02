function filtered = passfilter(img, kernel)
    [m,n] = size(img);

    % pad image
    paddedimg = padarray(img, size(img), 'post');

    % convert to freq domain
    [fimg, ~] = spatial2freq(paddedimg);

    % element wise mult in freq domain
    filtered = kernel .* fimg;

    % convert to spatial domain
    ifimg = freq2spatial(filtered);

    % unpad image
    unpaddedimg = ifimg(1:m, 1:n);

    % return result image
    filtered = unpaddedimg;
end