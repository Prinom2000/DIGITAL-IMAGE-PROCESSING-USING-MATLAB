img = imread('Picture3.jpg');  
if size(img,3) == 3
    img = rgb2gray(img);
end
noisy_img = imnoise(img, 'salt & pepper', 0.02); 
box_filter = fspecial('average', [3 3]); 
box_filtered_img = imfilter(noisy_img, box_filter, 'same');
average_filter = fspecial('average', [5 5]);
average_filtered_img = imfilter(noisy_img, average_filter, 'same');
median_filtered_img = medfilt2(noisy_img, [3 3]); 
figure;
subplot(2,3,1), imshow(img), title('Original Image');
subplot(2,3,2), imshow(noisy_img), title('Image with Noise');
subplot(2,3,3), imshow(box_filtered_img), title('Image with Box Filtering');
subplot(2,3,4), imshow(average_filtered_img), title('Image with Average Filtering');
subplot(2,3,6), imshow(median_filtered_img), title('Image with Median Filtering');