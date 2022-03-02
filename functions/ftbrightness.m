function result = ftbrightness(I, factor)
    J = dct2(I);

    J(1, 1) = J(1, 1) * factor;

    result = idct2(J);
end

