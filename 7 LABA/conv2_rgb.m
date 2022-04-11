function f=conv2_rgb(image, kernel)
    RC = conv2(image(:, :, 1), kernel);
    GC = conv2(image(:, :, 2), kernel);
    BC = conv2(image(:, :, 3), kernel);
    CRGB(:, :, 1) = RC;
    CRGB(:, :, 2) = GC;
    CRGB(:, :, 3) = BC;
    f = uint8(CRGB);
end
