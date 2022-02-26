function [kernel] = fdistmatrix(kernelsize)
	[m, n] = num2cell(int64(kernelsize)){:};
	[mcenter, ncenter] = num2cell(double(kernelsize+1)/2){:};

	duv = double(zeros(m, n));
	for i = 1:m
		for j = 1:n
			duv(i, j) = sqrt(sum(([i j]-[mcenter ncenter]).^2));
		end
	end

	kernel = duv;
end