original = imread('Picture2.jpg');
original = im2double(original);

if size(original, 3) == 3
    original_gray = rgb2gray(original);
else
    original_gray = original;
end

laplacian_filter = fspecial('laplacian', 0.2);
laplacian_img = imfilter(original_gray, laplacian_filter, 'replicate');
sharpened_img = original_gray - laplacian_img;

figure('Name','Laplacian Filtering','NumberTitle','off');
subplot(1, 2, 1);
imshow(original_gray);
title('Original Image');

subplot(1, 2, 2);
imshow(sharpened_img);
title('Laplacian Sharpened Image');
