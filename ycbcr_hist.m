function ycbcr_hist (fname)
% ycbcr_hist (image file name)
    pkg load image;

    image = rgb2ycbcr(imread(fname));

    hist (image(:,:,1));
    print (strcat(fname, 'y.png'));

    hist (image(:,:,2));
    print (strcat(fname, 'cb.png'));

    hist (image(:,:,3));
    print (strcat(fname, 'cr.png'));
