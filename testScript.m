img = truecolorload("images/2alley.png");
s = size(img);
for i = 1:3
    img(:, :, i) = passfilter(img(:, :, i), 1 - ilpf(64, {s(1)*2 s(2)*2}));
end
imshow(img);