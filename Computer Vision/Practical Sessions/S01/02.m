% manipulation of color channels (Manipulation des canaux de coleurs)

% 1- Extracting channels from an RGB image

Red = image_color(:,:,1);
Green = image_color(:,:,2);
Blue = image_color(:,:,3);

% (2, 2, 1) refers to : Two lines, Two columns, and first figure
% function imshow takes as an argument the original image, titled 'original image'

figure, subplot(2, 2, 1), imshow(image_color), title('image originale')
subplot(2,2,2), imshow(Red), title('Canal Rouge/ Red Canal')
subplot(2,2,3), imshow(Green), title('Canal Vert/ Green Canal')
subplot(2,2,4), imshow(Blue), title('Canal Blue/ Bleu Canal')
