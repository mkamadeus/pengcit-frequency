function noised = makeperiodicnoise(img, a, b)
	% make periodic noise on image with sin(ax + by)
	s = size(img);
	[x,y] = meshgrid(1:s(1), 1:s(2));
	p = sin(a*x+b*y) + 1;
	noised = (im2double(img)+ p'/2)/2;
end