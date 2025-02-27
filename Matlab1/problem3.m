img = imread('C:\Users\Students\Desktop\Matlab1\ewu.jpg');
imshow(img);

gray_img = rgb2gray(img);
imshow(gray_img);
imwrite(gray_img, 'C:\Users\Students\Desktop\Matlab1\gray_img.png');

binary_img = imbinarize(gray_img, 0.5);
imshow(binary_img);
imwrite(binary_img, 'C:\Users\Students\Desktop\Matlab1\binary_img.png');
