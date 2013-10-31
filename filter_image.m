function image = filter_image (fname)
% filter_image (image file name)
    pkg load image;

    orig = imread(fname);
    ycbcr = rgb2ycbcr (orig); % 3d matrix
    y = ycbcr (:,:,1);
    cb = ycbcr (:,:,2);
    cr = ycbcr (:,:,3);

    check = arrayfun(@(x) x <= 120 && x >= 80, cb) .* \
            arrayfun(@(x) x <= 173 && x >= 133, cr);
    image = check .* orig;
