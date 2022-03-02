function [kernel] = blpf(cutoff, order, kernelsize)
    kernel = fdistmatrix(kernelsize);
    kernel = 1 ./ (1 + (kernel ./ cutoff) .^ (2 * order));
end