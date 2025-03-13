image = imread('Picture1.jpg');

if size(image, 3) == 3
    gray_image = rgb2gray(image);
else
    gray_image = image;
end

contrast_stretched_image = imadjust(gray_image, [50/255; 200/255], [0; 1]);


figure;
subplot(1, 2, 1);
imshow(gray_image);
title('Original Grayscale Image');

subplot(1, 2, 2);
imshow(contrast_stretched_image);
title('Contrast Stretched Image');
