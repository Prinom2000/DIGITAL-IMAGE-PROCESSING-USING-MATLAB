original = imread('Picture1.jpg');
original = im2double(original);

if size(original, 3) == 3
    original_gray = rgb2gray(original);
else
    original_gray = original;
end

h = fspecial('gaussian', [5 5], 1);
blurred = imfilter(original_gray, h, 'replicate');
mask = original_gray - blurred;
A = 1.5;
high_boost_img = original_gray + A * mask;

figure('Name','High Boost Filtering','NumberTitle','off');
subplot(1, 2, 1);
imshow(original_gray);
title('Original Image');

subplot(1, 2, 2);
imshow(high_boost_img);
title(['High Boost Image (A = ', num2str(A), ')']);
