img = imread('Picture4.jpg');

brightened_img = imadjust(img, [], [0.3 1]);  
figure;
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(brightened_img), title('Brightened Image');
