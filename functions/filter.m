function filtered = filter(img, kernel) {
	[m,n] = size(img);
	[p,q] = 2* size(img);

	% pad image
	paddedimg = padarray(img, size(img), 'post');

	filtered = kernel .* ;
}