% TP3 - Segmentation of a Textured Image

% 1. Load the image
image = imread('flatfish.jpg');

% 2. Convert to grayscale
grayImage = rgb2gray(image);

% 3. Texture filtering with rangefilt
filteredImage = rangefilt(grayImage);

% 4. Rescale pixel values to [0, 1]
rescaledImage = rescale(filteredImage);

% 5. Noise reduction with a median filter
denoisedImage = medfilt2(rescaledImage, [7 7]);

% 6. Binarization of the image
binaryImage = imbinarize(denoisedImage);

% 7. Image complement
binaryComplement = imcomplement(binaryImage);

% 8. Border cleanup
cleanedImage = imclearborder(binaryComplement);

% 9. Remove small components
cleanedImage = bwareaopen(cleanedImage, 50);

% 10. Morphological closing
structuringElement = strel('disk', 6);
closedImage = imclose(cleanedImage, structuringElement);

% 11. Fill holes
finalImage = imfill(closedImage, 'holes');

% Display results
figure;
subplot(2, 3, 1); imshow(image); title('Original Image', 'FontSize', 6);
subplot(2, 3, 2); imshow(grayImage); title('Grayscale Image', 'FontSize', 6);
subplot(2, 3, 3); imshow(rescaledImage); title('Filtered and Rescaled Image', 'FontSize', 6);
subplot(2, 3, 4); imshow(binaryImage); title('Binary Image', 'FontSize', 6);
subplot(2, 3, 5); imshow(cleanedImage); title('Cleaned Image', 'FontSize', 6);
subplot(2, 3, 6); imshow(finalImage); title('Final Segmented Image', 'FontSize', 6);

% Save figure as PNG
saveas(gcf, 'figure_1.png');
