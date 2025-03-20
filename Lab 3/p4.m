% a) Read and show the image
img = imread('Picture4.jpg');
figure;
imshow(img);
title('Loaded Image');

% b) Show the matrix form of the image
disp('Matrix form of the image:');
disp(img);

% c) Show pixel information by hovering the cursor
impixelinfo;

% d) Find the value of the pixel (10, 78) - handles RGB now!
x = 10;
y = 78;
pixel_value = img(x, y, :);
disp(['Pixel value at (10, 78): R=', num2str(pixel_value(1)), ...
      ', G=', num2str(pixel_value(2)), ', B=', num2str(pixel_value(3))]);

% e) Show the size of the image
[height, width, channels] = size(img);
disp(['Image size: ', num2str(width), 'x', num2str(height), ', Channels: ', num2str(channels)]);

% f) Show all the information of the image
disp('Full image details:');
disp(['Dimensions: ', mat2str(size(img))]);
disp(['Data type: ', class(img)]);
disp(['Number of pixels: ', num2str(numel(img))]);
