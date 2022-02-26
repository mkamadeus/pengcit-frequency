function [img] = freq2spatial(freq) {
	img = ifft2(freq);
	img = uint8(img);
}