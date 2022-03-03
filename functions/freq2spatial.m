function [img] = freq2spatial(freq)
    img = real(ifft2(freq));
    img = double(img);
end