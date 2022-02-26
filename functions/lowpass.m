function filtered = lowpass(img, kernel) {
	[m,n] = size(img);
	[p,q] = 2* size(img);

	% pad image
	paddedimg = padarray(img, size(img), 'post');

	% convert to freq domain
	[fimg, shifted] = spatial2freq(paddedimg);

	% element wise mult in freq domain
	filtered = kernel .* fimg;

	% convert to spatial domain
	ifimg = freq2spatial(filtered)

	filtered = ifimg
}