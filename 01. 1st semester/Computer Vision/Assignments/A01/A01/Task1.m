
% Task 1: Dynamic Expansion
 folderPath = '/MATLAB Drive/A01/img';
 im1 = imread(fullfile(folderPath, 'sosie.png'));
 im2 = imread(fullfile(folderPath, 'scene.png'));
 im2=rgb2gray(im2);

% Rescaling
 im1_rescaled= rescale(im1);
 im2_rescaled= rescale(im2);

 figure,
 subplot(2,2,1); imshow(im1); title('original image')
 subplot(2,2,2);imshow(im1_rescaled); title('Rescaled image')
 subplot(2,2,3); imhist(im1); title('Before rescaling')
 subplot(2,2,4); imhist(im1_rescaled); title('After rescaling')


% Exporting la figure
exportgraphics(gcf, 'Figure 1.png', 'Resolution',300); % PNG avec 300 DPI

figure,
 subplot(2,2,1); imshow(im2); title('original image')
 subplot(2,2,2);imshow(im2_rescaled); title('Rescaled Image')
 subplot(2,2,3); imhist(im2); title('before rescaling')
 subplot(2,2,4); imhist(im2_rescaled); title('after rescaling')

 %Exporting figure
exportgraphics(gcf, 'Figure 2.png', 'Resolution',300); % PNG avec 300 DPI
 
 % Adjusting
 im1_expansian=imadjust(im1);
 im2_expansian=imadjust(im2);

 figure,
 subplot(2,2,1); imshow (im1);title('original image')
 subplot(2,2,2);imshow(im1_expansian); title('adjusted image')
 subplot(2,2,3);imhist(im1);title ('before adjusting')
 subplot(2,2,4); imhist(im1_expansian); title('after adjusting')

  % Exporting Figure
 exportgraphics(gcf, 'Figure 3.png', 'Resolution',300); % PNG avec 300 DPI


 figure,
 subplot(2,2,1); imshow(im2); title('original image')
 subplot(2,2,2); imshow(im2_expansian); title('adjusted image')
 subplot(2,2,3); imhist(im2); title('before adjusting')
 subplot(2,2,4); imhist(im2_expansian); title('after adjusting')

% Exporting Figure
 exportgraphics(gcf, 'Figure 4.png', 'Resolution',300); % PNG avec 300 DPI

