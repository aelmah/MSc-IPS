% Extraction methods 
folderPath = '/MATLAB Drive/A01/img';
im4 = imread(fullfile(folderPath, 'carottes.PNG'));

% Method 1
redChannel = im4(:,:,1); % Canal Rouge
greenChannel = im4(:,:,2); % Canal Vert
blueChannel = im4(:,:,3); % Canal Bleu

% Method 2 
 %[Red, Green, Blue] = imsplit(im4)

 %Channels
figure; subplot(2,2,1); imshow(im4), title('original Image');
subplot(2,2,2); imshow(redChannel); title('Red Channel');
subplot(2,2,3); imshow(greenChannel); title('Green Channel');
subplot(2,2,4); imshow(blueChannel); title('Blue Channel');

% Exporting Figure
 exportgraphics(gcf, 'Figure 10.png', 'Resolution',300); % PNG avec 300 DPI

%Histogrammes
figure; subplot(2,2,1); imhist(im4), title('original Image');
subplot(2,2,2); imhist(redChannel); title('Red Channel');
subplot(2,2,3); imhist(greenChannel); title('Green Channel');
subplot(2,2,4); imhist(blueChannel); title('Blue Channel');


% Exporting Figure
 exportgraphics(gcf, 'Figure 11.png', 'Resolution',300); % PNG avec 300 DPI

% Adaptive Equalization Histogram
% Converting to grayscale for adaptive histogram equalization
im4_gray = rgb2gray(im4); 
im4_adap = adapthisteq(im4_gray, 'ClipLimit', 0.05);

% Thresholding
gBw = im4_adap > 130; % Binarization after adaptive equalization

% Otsu's method
level = graythresh(redChannel); % Normalized threshold in [0, 1]
gBw_otsu = im4_adap > level * 255; % Rescale to 0-255 if needed

% visulaizing results
figure;
subplot(2,2,1); imshow(redChannel); title('Red Channel');
subplot(2,2,2); imshow(im4_adap); title('Adaptive Equalized Image');
subplot(2,2,3); imshow(gBw); title('Binarized Image');
subplot(2,2,4); imshow(gBw_otsu); title('Otsu Thresholding');

% Exporting Figure
 exportgraphics(gcf, 'Figure 12.png', 'Resolution',300); % PNG avec 300 DPI

