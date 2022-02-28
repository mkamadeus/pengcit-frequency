function [freq, shifted] = spatial2freq(img)
	freq = fft2(img);
	shifted = fftshift(freq);
	shifted = log(abs(shifted) + 1);
end