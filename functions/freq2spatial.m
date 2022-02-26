function [img] = freq2spatial(freq)
	img = real(ifft2(freq));
	img = uint8(img);
end