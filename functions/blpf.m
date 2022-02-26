function [kernel] = blpf(cutoff, order, kernelsize)
	[m, n] = num2cell(int64(kernelsize)){:};
	kernel = fdistmatrix(kernelsize);
	
	for i = 1:m
		for j = 1:n
			kernel(i,j) = 1/(1+ (kernel(i,j) / cutoff)^(2*order));
		end
	end
end