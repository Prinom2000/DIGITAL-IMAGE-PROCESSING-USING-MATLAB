img = imread('Picture2.jpg'); 
if size(img,3) == 3

   img = rgb2gray(img);

end
noisy_img = imnoise(img, 'gaussian', 0, 0.01);
gaussian_filter = fspecial('gaussian', [5 5], 1);
filtered_img = imfilter(noisy_img, gaussian_filter, 'same');
figure;
subplot(1,3,1), imshow(img), title('Original Image');
subplot(1,3,2), imshow(noisy_img), title('Gaussian Noisy Image');
subplot(1,3,3), imshow(filtered_img), title('Denoised Image (Gaussian Filter)');