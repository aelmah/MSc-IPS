% Task 2: Histogram Equalization
 Im1_eq=histeq(im1);
 figure,
 subplot(2,2,1); imshow(im1); title('original image')
 subplot(2,2,2); imshow(Im1_eq); title('equalized image')
 subplot(2,2,3); imhist(im1); title('before equalization')
 subplot(2,2,4); imhist(Im1_eq); title('after equalization')
 
 % Exporting Figure
 exportgraphics(gcf, 'Figure 5.png', 'Resolution',300); % PNG avec 300 DPI


 Im2_eq=histeq(im2);
 figure,
 subplot(2,2,1); imshow(im2); title('original image')
 subplot(2,2,2); imshow(Im2_eq); title('equalized image')
 subplot(2,2,3); imhist(im2); title('before equalization')
 subplot(2,2,4); imhist(Im2_eq); title('after equalization')

 % Exporting Figure
 exportgraphics(gcf, 'Figure 6.png', 'Resolution',300); % PNG avec 300 DPI




