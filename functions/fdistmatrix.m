function [kernel] = fdistmatrix(kernelsize)
    [m, n] = kernelsize{:};

    % Generate values from 0 to size
    u = 0:(m-1);
    v = 0:(n-1);

    % Offset values by half
    idx = find(u > m/2);
    u(idx) = u(idx) - m;
    idy = find(v > n/2);
    v(idy) = v(idy) - n;

    % Generate matrix of "distance from corner"
    [U, V] = meshgrid(u, v);
    D = sqrt(U.^2 + V.^2);

	kernel = D;
end