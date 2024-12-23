% Task: Image Filtering and Segmentation in MATLAB
% Author: amalelmahraoui
% Date: 09-12-2024

% Uploading Images
original_image = imread('/MATLAB Drive/A02/img/ref.jpg');
noisy_sp = imread('/MATLAB Drive/A02/img/m_br11.jpg');
noisy_gaussian = imread('/MATLAB Drive/A02/img/m_br22.jpg');

% mean filter with different kernel sizes 
F3 = fspecial('average', [3 3]);
F7 = fspecial('average', [7 7]);
F13 = fspecial ('average', [13 13]);

% applying mean filter 
fg3= imfilter(noisy_gaussian, F3);
fg7= imfilter(noisy_gaussian, F7);
fg13 = imfilter(noisy_gaussian, F13);

fsp3= imfilter(noisy_sp, F3);
fsp7 = imfilter(noisy_sp, F7);
fsp13 = imfilter(noisy_sp, F13);


% visualizing results
figure;
subplot(4, 4, 1), imshow(original_image), title('original');
subplot(4, 4, 2), imshow(fg3), title('G 3x3');
subplot(4, 4, 3), imshow(fg7), title('G 7x7');
subplot(4, 4, 4), imshow(fg13), title('G 13x13');

subplot(4, 4, 5), imhist(original_image), title('original');
subplot(4, 4, 6), imhist(fg3), title('G 3x3');
subplot(4, 4, 7), imhist(fg7), title('G 7x7');
subplot(4, 4, 8), imhist(fg13), title('G 13x13');

subplot(4, 4, 9), imshow(fsp3), title('SP 3x3');
subplot(4, 4, 10), imshow(fsp7), title('SP 7x7');
subplot(4, 4, 11), imshow(fsp13), title('SP 13x13');

subplot(4, 4, 13), imhist(fsp3), title('SP 3x3');
subplot(4, 4, 14), imhist(fsp7), title('SP 7x7');
subplot(4, 4, 15), imhist(fsp13), title('SP 13x13');

% Saving figure 01
saveas(gcf, 'Figure 1.png');


%median filter with different kernel sizes
mg3= medfilt2(noisy_gaussian, [3 3]);
mg7= medfilt2(noisy_gaussian, [7 7]);
mg13= medfilt2(noisy_gaussian, [13 13]);

msp3= medfilt2(noisy_sp, [3 3]);
msp7= medfilt2(noisy_sp, [7 7]);
msp13= medfilt2(noisy_sp, [13 13]);

%Visualizing results
figure; subplot(3, 4, 1), imshow(original_image), title('original');
subplot(3, 4, 2), imshow(mg3), title('SP M 3x3');
subplot(3, 4, 3), imshow(mg7), title('SP M 7x7');
subplot(3, 4, 4), imshow(mg13), title('SP M 13x13');

subplot(3, 4, 5), imhist(original_image), title('original');
subplot(3, 4, 6), imhist(fsp3), title('SP 3x3');
subplot(3, 4, 7), imhist(fsp7), title('SP 7x7');
subplot(3, 4, 8), imhist(fsp13), title('SP 13x13');

% Saving figure 02
saveas(gcf, 'Figure 2.png');