function [freq, shifted] = spatial2freq(img)
	freq = fft2(img);
	shifted = fftshift(freq);
	shifted = abs(shifted);
	shifted = log(shifted + 1);
end