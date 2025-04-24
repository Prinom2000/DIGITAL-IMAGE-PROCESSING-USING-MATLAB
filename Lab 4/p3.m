original = imread('Picture3.jpg');
original = im2double(original);

if size(original, 3) == 3
    original_gray = rgb2gray(original);
else
    original_gray = original;
end

edge_roberts = edge(original_gray, 'roberts');
edge_sobel = edge(original_gray, 'sobel');
edge_prewitt = edge(original_gray, 'prewitt');

figure('Name','Edge Detection using Different Operators','NumberTitle','off');

subplot(2, 2, 1);
imshow(original_gray);
title('Original Image');

subplot(2, 2, 2);
imshow(edge_roberts);
title('Roberts Operator');

subplot(2, 2, 3);
imshow(edge_sobel);
title('Sobel Operator');

subplot(2, 2, 4);
imshow(edge_prewitt);
title('Prewitt Operator');
