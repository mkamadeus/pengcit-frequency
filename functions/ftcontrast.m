function result = ftcontrast(I, factor)
    J = dct2(I);
    [m, n] = size(I);

    % Mask everything except first cell
    mask = false;
    mask = padarray(mask, [m-1 n-1], true, 'post');

    J(mask) = J(mask) .* factor;

    result = idct2(J);
end

