%Task 3: Adaptive Histogram Equalization (AHE)
folderPath = '/MATLAB Drive/A01/img';
im3 = imread(fullfile(folderPath, 'book2.PNG'));
im3=rgb2gray(im3)

%adjusting
im3_adjusted=imadjust(im3);
im3_equalized= histeq(im3);
im3_Binarized= imbinarize(im3);
figure,
subplot(2,2,1); imshow(im3); title('Original image')
subplot(2,2,2);imshow(im3_adjusted); title('Adjusted image')
subplot(2,2,3); imshow(im3_equalized); title('equalized image')
subplot(2,2,4); imshow(im3_Binarized); title('binazired image')

% Exporting Figure
exportgraphics(gcf, 'Figure 7.png', 'Resolution',300); % PNG avec 300 DPI



% binarizing

adj_binar= imbinarize(im3_adjusted);
eq_binar = imbinarize(im3_equalized);
figure,
subplot(2,2,1);imshow(im3_adjusted); title('Adjusted image')
subplot(2,2,2); imshow(im3_equalized); title('equalized image')
subplot(2,2,3);imshow(adj_binar); title('Adjusted & Binarized')
subplot(2,2,4); imshow(eq_binar); title('equalized & Binarized')
% Exporting Figure
 exportgraphics(gcf, 'Figure 8.png', 'Resolution',300); % PNG avec 300 DPI

%adaphisteq
adapthisteq_image = adapthisteq(im3)
figure, subplot(2,2,1); imshow(im3); title('original image')
subplot(2,2,2); imshow(adapthisteq_image); title('Image with adapthisteq')

% Exporting Figure
 exportgraphics(gcf, 'Figure 9.png', 'Resolution',300); % PNG avec 300 DPI


