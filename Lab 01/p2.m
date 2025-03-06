img = imread('Picture2.png');

gray_img = rgb2gray(img);
imshow(gray_img);


binary_img1 = imbinarize(gray_img, 0.5); % Convert to binary with threshold 0.5
imshow(binary_img1);

binary_img2 = imbinarize(gray_img, 0.3); % Convert to binary with threshold 0.5
imshow(binary_img2);

binary_img3 = imbinarize(gray_img, 0.7); % Convert to binary with threshold 0.5
imshow(binary_img3);

figure;
subplot(2,2,1), imshow(binary_img1), title('Binary with threshold 0.5');
subplot(2,2,2), imshow(binary_img2), title('Binary with threshold 0.3');
subplot(2,2,3), imshow(binary_img3), title('Binary with threshold 0.7');