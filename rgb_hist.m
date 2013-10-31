function rgb_hist (fname)
% rgb_hist (image file name)
    image = imread(fname);

    hist (image(:,:,1));
    print (strcat(fname, 'r.png'));

    hist (image(:,:,2));
    print (strcat(fname, 'g.png'));

    hist (image(:,:,3));
    print (strcat(fname, 'b.png'));
