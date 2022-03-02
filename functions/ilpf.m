function [kernel] = ilpf(cutoff, kernelsize)
    kernel = fdistmatrix(kernelsize);
    kernel = double(kernel <= cutoff);
end