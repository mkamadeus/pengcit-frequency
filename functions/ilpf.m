function [kernel] = ilpf(cutoff, kernelsize)
	[m, n] = num2cell(int64(kernelsize)){:};
	kernel = fdistmatrix(kernelsize);

	for i = 1:m
		for j = 1:n
			if(kernel(i,j) <= cutoff)
				kernel(i, j) = 1;
			else
				kernel(i, j) = 0;
			end
		end
	end
end