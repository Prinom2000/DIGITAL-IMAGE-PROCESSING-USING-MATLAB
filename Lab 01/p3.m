img = imread('Picture2.png'); % Read image
gray_img = rgb2gray(img); % Convert to grayscale

binary_img1 = imbinarize(gray_img, 0.5); % Convert to binary with threshold 0.5
imshow(binary_img1);
title('Binary Image');

% Determine the number of objects using 8-connectivity
cc4 = bwconncomp(binary_img1, 4); % 4-connectivity finds objects considering diagonal connections

num_objects4 = cc4.NumObjects; % Get number of objects
disp(['Number of objects in the binary image using 4-connectivity: ', num2str(num_objects4)]);

% Determine the number of objects using 8-connectivity
cc8 = bwconncomp(binary_img1, 8); % 8-connectivity finds objects considering diagonal connections

num_objects8 = cc8.NumObjects; % Get number of objects
disp(['Number of objects in the binary image using 8-connectivity: ', num2str(num_objects8)]);

