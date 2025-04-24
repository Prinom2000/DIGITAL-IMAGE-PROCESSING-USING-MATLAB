original = imread('Picture3.jpg');
original = im2double(original);

if size(original, 3) == 3
    original_gray = rgb2gray(original);
else
    original_gray = original;
end

h = fspecial('gaussian', [5 5], 1);
blurred = imfilter(original_gray, h, 'replicate');
mask = original_gray - blurred;
unsharp_img = original_gray + mask;
unsharp_sobel = edge(unsharp_img, 'sobel');

A = 1.5;
high_boost_img = original_gray + A * mask;
highboost_sobel = edge(high_boost_img, 'sobel');

laplacian_filter = fspecial('laplacian', 0.2);
laplacian_img = original_gray - imfilter(original_gray, laplacian_filter, 'replicate');
laplacian_sobel = edge(laplacian_img, 'sobel');

edge_roberts = edge(original_gray, 'roberts');
edge_sobel = edge(original_gray, 'sobel');
edge_prewitt = edge(original_gray, 'prewitt');
edge_canny = edge(original_gray, 'canny');

figure;
subplot(3, 3, 1); imshow(original_gray); title('Original');
subplot(3, 3, 2); imshow(unsharp_sobel); title('Unsharp + Sobel');
subplot(3, 3, 3); imshow(highboost_sobel); title('High Boost + Sobel');
subplot(3, 3, 4); imshow(laplacian_sobel); title('Laplacian + Sobel');
subplot(3, 3, 5); imshow(edge_roberts); title('Roberts');
subplot(3, 3, 6); imshow(edge_sobel); title('Sobel');
subplot(3, 3, 7); imshow(edge_prewitt); title('Prewitt');
subplot(3, 3, 8); imshow(edge_canny); title('Canny');
