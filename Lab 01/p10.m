img = imread('Picture6.jpg');

negative_img = 255 - img;

figure;
subplot(1,2,1), imshow(img), title('Original Grayscale Image');
subplot(1,2,2), imshow(negative_img), title('Digital Negative Image');
