% Load images
img1 = imread('/MATLAB Drive/A02/img/m_br11.jpg'); % Gaussian noise
img2 = imread('/MATLAB Drive/A02/img/m_br22.jpg'); % Salt & Pepper noise

% Checking if images are already grayscale
if size(img1, 3) == 3
    img1_gray = rgb2gray(img1); 
else
    img1_gray = img1; 
end

if size(img2, 3) == 3
    img2_gray = rgb2gray(img2);
else
    img2_gray = img2;
end

% Visualizing histograms
figure;
subplot(2, 2, 1), imhist(img1_gray), title('Histogram of m_br1');
subplot(2, 2, 2), imhist(img2_gray), title('Histogram of m_br2');

% automatic threshold using Otsu's method
thresh1_auto = graythresh(img1_gray);
thresh2_auto = graythresh(img2_gray);

disp(['Auto threshold for m_br1: ', num2str(thresh1_auto)]);
disp(['Auto threshold for m_br2: ', num2str(thresh2_auto)]);

% Applying automatic thresholding
bw1_auto = imbinarize(img1_gray, thresh1_auto);
bw2_auto = imbinarize(img2_gray, thresh2_auto);

% Displaying binary results from automatic thresholding
subplot(2, 2, 3), imshow(bw1_auto), title('Auto Thresholded m_br1');
subplot(2, 2, 4), imshow(bw2_auto), title('Auto Thresholded m_br2');

% Saving figure 03
saveas(gcf, 'Figure 3.png');

% a manual threshold based on histogram analysis
manual_thresh1 = 0.5; % Adjust based on histogram
manual_thresh2 = 0.5; % Adjust based on histogram

% Applying manual thresholding
bw1_manual = imbinarize(img1_gray, manual_thresh1);
bw2_manual = imbinarize(img2_gray, manual_thresh2);

% Applying filtering to improve segmentation
filtered_img1 = medfilt2(img1_gray, [3, 3]); % Median filter
filtered_img2 = medfilt2(img2_gray, [3, 3]); % Median filter

% Applying manual thresholding after filtering
bw1_filtered = imbinarize(filtered_img1, manual_thresh1);
bw2_filtered = imbinarize(filtered_img2, manual_thresh2);

% Displaying results of manual thresholding before and after filtering
figure;
subplot(2, 2, 1), imshow(bw1_manual), title('Manual Threshold (m_br1)');
subplot(2, 2, 2), imshow(bw2_manual), title('Manual Threshold (m_br2)');
subplot(2, 2, 3), imshow(bw1_filtered), title('Filte+Thresh(m_br1)');
subplot(2, 2, 4), imshow(bw2_filtered), title('Filter+Thresh (m_br2)');

% Saving figure 04
saveas(gcf, 'Figure 4.png');