function [kernel] = glpf(cutoff, kernelsize)
	[m, n] = num2cell(int64(kernelsize)){:};
	kernel = fdistmatrix(kernelsize);
	
	for i = 1:m
		for j = 1:n
			p = (kernel(i,j)^2);
			p = p / (2*(cutoff^2));
			kernel(i,j) = 1/(e^p);
		end
	end
end