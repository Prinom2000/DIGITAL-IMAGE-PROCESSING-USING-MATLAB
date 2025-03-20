rgb_img = imread('Picture5_1.jpg');
gray_img = imread('Picture5_2.jpg');
if size(gray_img, 3) == 3

  gray_img = rgb2gray(gray_img);

end
[indexed_img, map] = imread('Picture5_3.tif');
if isempty(map)

  indexed_gray = gray_img;

  indexed_rgb = rgb_img;

else

  indexed_gray = ind2gray(indexed_img, map);

  indexed_rgb = ind2rgb(indexed_img, map);

end
rgb_to_gray = rgb2gray(rgb_img);
binary_img = imbinarize(gray_img);
inverted_binary = imcomplement(binary_img);
figure, imhist(gray_img), title('Histogram of Grayscale Image');
inverted_rgb = imcomplement(im2uint8(rgb_img));
blurred_rgb = imgaussfilt(rgb_img, 2);
figure;
subplot(3,3,1), imshow(rgb_img), title('RGB Image');
subplot(3,3,2), imshow(gray_img), title('Grayscale Image');
subplot(3,3,3), imshow(indexed_rgb), title('Indexed to RGB');
subplot(3,3,4), imshow(rgb_to_gray), title('RGB to Grayscale');
subplot(3,3,5), imshow(indexed_gray), title('Indexed to Grayscale');
subplot(3,3,6), imshow(binary_img), title('Grayscale to Binary');
subplot(3,3,7), imshow(inverted_binary), title('Inverted Binary');
subplot(3,3,8), imshow(inverted_rgb), title('Inverted RGB');
subplot(3,3,9), imshow(blurred_rgb), title('Blurred RGB');