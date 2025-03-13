
img = imread('Picture5.jpg');

if size(img, 3) == 3
    gray_img = rgb2gray(img);
else
    gray_img = img;
end


original_hist = imhist(gray_img);

equalized_img = histeq(gray_img);

equalized_hist = imhist(equalized_img);


figure;
subplot(2, 2, 1);
imshow(gray_img);
title('Original Image');

subplot(2, 2, 2);
imshow(equalized_img);
title('Equalized Image');

subplot(2, 2, 3);
bar(original_hist);
title('Histogram of Original Image');
xlim([0 255]);

subplot(2, 2, 4);
bar(equalized_hist);
title('Histogram of Equalized Image');
xlim([0 255]);
