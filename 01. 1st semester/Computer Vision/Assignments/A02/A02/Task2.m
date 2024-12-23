% Task 2: Image Quality Analysis

% Loading images
original = imread('/MATLAB Drive/A02/img/ref.jpg');
br1 = imread('/MATLAB Drive/A02/img/m_br11.jpg');
br2 = imread('/MATLAB Drive/A02/img/m_br22.jpg');

% Converting to grayscale if images are in RGB
if size(original, 3) == 3
    original_gray = rgb2gray(original);
else
    original_gray = original;
end

if size(br1, 3) == 3
    br1_gray = rgb2gray(br1);
else
    br1_gray = br1;
end

if size(br2, 3) == 3
    br2_gray = rgb2gray(br2);
else
    br2_gray = br2;
end

% Apply filters
f = fspecial('average', [13 13]); % Average filter
br1_mean = imfilter(br1_gray, f); % Mean filter
br1_median = medfilt2(br1_gray, [13 13]); % Median filter

br2_mean = imfilter(br2_gray, f); % Mean filter
br2_median = medfilt2(br2_gray, [13 13]); % Median filter

% MSE for br1
MSE_br1 = immse(double(br1_gray), double(original_gray));
fprintf('\n Without filter (br1): MSE is %0.4f\n', MSE_br1);

MSE_br1_mean = immse(double(br1_mean), double(original_gray));
fprintf('\n With mean filter (br1): MSE is %0.4f\n', MSE_br1_mean);

MSE_br1_median = immse(double(br1_median), double(original_gray));
fprintf('\n With median filter (br1): MSE is %0.4f\n', MSE_br1_median);

% BRISQUE for br1
b_br1 = brisque(uint8(br1_gray));
fprintf('\n Without filter (br1): BRISQUE is %0.4f\n', b_br1);

b_br1_mean = brisque(uint8(br1_mean));
fprintf('\n With mean filter (br1): BRISQUE is %0.4f\n', b_br1_mean);

b_br1_median = brisque(uint8(br1_median));
fprintf('\n With median filter (br1): BRISQUE is %0.4f\n', b_br1_median);

% MSE for br2
MSE_br2 = immse(double(br2_gray), double(original_gray));
fprintf('\n Without filter (br2): MSE is %0.4f\n', MSE_br2);

MSE_br2_mean = immse(double(br2_mean), double(original_gray));
fprintf('\n With mean filter (br2): MSE is %0.4f\n', MSE_br2_mean);

MSE_br2_median = immse(double(br2_median), double(original_gray));
fprintf('\n With median filter (br2): MSE is %0.4f\n', MSE_br2_median);

% BRISQUE for br2
b_br2 = brisque(uint8(br2_gray));
fprintf('\n Without filter (br2): BRISQUE is %0.4f\n', b_br2);

b_br2_mean = brisque(uint8(br2_mean));
fprintf('\n With mean filter (br2): BRISQUE is %0.4f\n', b_br2_mean);

b_br2_median = brisque(uint8(br2_median));
fprintf('\n With median filter (br2): BRISQUE is %0.4f\n', b_br2_median);
