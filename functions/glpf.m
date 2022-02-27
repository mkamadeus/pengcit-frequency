function [kernel] = glpf(cutoff, kernelsize)
	kernel = fdistmatrix(kernelsize);
	
    kernel = kernel .^ 2;
    kernel = -kernel ./ (2 * cutoff ^ 2);
    kernel = exp(kernel);
end