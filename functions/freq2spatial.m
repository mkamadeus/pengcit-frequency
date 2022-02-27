function [img] = freq2spatial(freq)
	img = real(ifft2(freq));
    %imshow(img, [])
	img = uint8(img);
end