function result = detect (fname, threshold = 0.5)
% detect (image file name, threshold)
    pkg load image;

    image = imread (fname);
    ycbcr = rgb2ycbcr (image); % 3d matrix
    y = ycbcr (:,:,1);
    cb = ycbcr (:,:,2);
    cr = ycbcr (:,:,3);
    [x, y] = size (cb);
    
    % TODO better approach to map a function to the matrix
    check = arrayfun(@(x) x <= 120 && x >= 80, cb) .* \
            arrayfun(@(x) x <= 173 && x >= 133, cr);
    if (sum (sum (check)) / (x * y) >= threshold)
        result = 1;
    else
        result = 0;
    end
