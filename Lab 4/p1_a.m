original = imread('Picture1.jpg');
original = im2double(original); % Convert to double

if size(original, 3) == 3
    original_gray = rgb2gray(original);
else
    original_gray = original;
end

h = fspecial('gaussian', [5 5], 1);  % Gaussian blur kernel
blurred = imfilter(original_gray, h, 'replicate');
mask = original_gray - blurred;
unsharp_img = original_gray + mask;

figure('Name','Unsharp Masking Result','NumberTitle','off');

subplot(1, 2, 1);
imshow(original_gray);
title('Original Image');

subplot(1, 2, 2);
imshow(unsharp_img);
title('Unsharp Masked Image');
