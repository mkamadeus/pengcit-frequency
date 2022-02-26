function [kernel] = ilpf(cutoff, kernelsize)
	[m, n] = num2cell(int64(kernelsize)){:};
	[mcenter, ncenter] = num2cell(double(kernelsize+1)/2){:};

	duv = zeros(m, n);
	for i = 1:m
		for j = 1:n
			duv(i, j) = sqrt(sum(([i j]-[mcenter ncenter]).^2));
			
			if(duv(i,j) <= cutoff)
				duv(i, j) = 1;
			else
				duv(i, j) = 0;
			end
		end
	end

	kernel = duv;
end