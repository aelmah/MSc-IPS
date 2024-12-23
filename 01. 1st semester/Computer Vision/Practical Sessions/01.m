
% Used Functions:
% imread: is the function that reads images
% imfinfo: shows informations about the image (width, height, colortype)
% imshow : for image displying
% disp: is used to show or disply a text or an image ..
% map: plalette colors associated to indexed images (non-real colors)

% Uploading and displying a grayscale image
image_gray = imread('cameraman.tif');
info_gray = imfinfo('cameraman.tif');
figure, imshow(image_gray)
title('image en niveaux de gris')
disp('informations sur l image en niveaux de gris:');
disp(info_gray);



% Uploading and displying a color image
image_color = imread('peppers.png');
info_color = imfinfo('peppers.png');
figure, imshow(image_color)
title('image en niveaux de coleurs')
disp('informations sur l image en niveaux de coleurs:');
disp(info_color);


% Uploading and displying indexed image

[X, map] = imread('trees.tif'); % 'X' is the index matrix, 'map' is the colormap
imshow(X, map);
title('Built-in Indexed Image: Trees');
disp(map); % Displays the RGB values of the colormap

