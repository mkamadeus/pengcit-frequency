function [res, F] = fixperiodicnoise(I, filters)
    [F, ~] = spatial2freq(I);
    F = fftshift(F);
    
    % Apply notch filters
    filter_count = size(filters, 1);
    for i = 1:filter_count
        x1 = filters(i, 1);
        y1 = filters(i, 2);
        x2 = filters(i, 3);
        y2 = filters(i, 4);

        F(x1:x2, y1:y2) = 0;
    end
    
    % Freq => spatial
    res = freq2spatial(ifftshift(F));
end