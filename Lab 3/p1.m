img = imread("Picture1.jpg");

if size(img,3) == 3

   img = rgb2gray(img);

end

noisy_img = imnoise(img, 'salt & pepper', 0.02);

se = ones(3,3);

min_filtered_img = ordfilt2(noisy_img, 1, se);

max_filtered_img = ordfilt2(noisy_img, 9, se);

figure;

subplot(2,2,1), imshow(img), title('Original Image');

subplot(2,2,2), imshow(noisy_img), title('Noisy Image (Salt & Pepper)');

subplot(2,2,3), imshow(min_filtered_img), title('Min Filtered Image');

subplot(2,2,4), imshow(max_filtered_img), title('Max Filtered Image');