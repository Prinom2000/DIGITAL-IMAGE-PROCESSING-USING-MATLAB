
input_img = imread('Picture4_1.jpg');
ref_img = imread('Picture4_2.jpg');

if size(input_img, 3) == 3
    input_img = rgb2gray(input_img);
end
if size(ref_img, 3) == 3
    ref_img = rgb2gray(ref_img);
end

input_hist = imhist(input_img);
ref_hist = imhist(ref_img);


matched_img = imhistmatch(input_img, ref_img);


figure;

subplot(3, 3, 1);
imshow(input_img);
title('Original Input Image');

% Display reference image
subplot(3, 3, 2);
imshow(ref_img);
title('Reference Image');

subplot(3, 3, 3);
imshow(matched_img);
title('Matched Output Image');

subplot(3, 3, 4);
bar(input_hist);
title('Histogram: Original Input');

subplot(3, 3, 5);
bar(ref_hist);
title('Histogram: Reference Image');

subplot(3, 3, 6);
bar(imhist(matched_img));
title('Histogram: Matched Output');
