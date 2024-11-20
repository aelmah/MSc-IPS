% Image Converting

% Convert to grayscale with rgb2gray function
% rgb2gray function works on converting RGB images to grayscale
% images
gray_image_rgb2gray = rgb2gray(image_color);
figure, imshow(gray_image_rgb2gray)
title('Image en niceaux de gris (rgb2gray)')

% Convert to grayscale with weighting formula (formule de pondération)
gray_image_manual = 0.2989 * Red + 0.5870 * Green + 0.1140 * Blue;
figure, imshow(gray_image_manual)
title('Image en niveaux gris (formule de pondération)')



