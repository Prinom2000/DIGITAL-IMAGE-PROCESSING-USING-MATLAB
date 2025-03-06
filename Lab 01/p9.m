img = imread('Picture5.jpg');

% Number of quantization levels
num_levels = 8;

% Quantize the image
quantized_img = floor(double(img) / (256 / num_levels)) * (256 / num_levels);

% Display the original and quantized images
figure;
subplot(1,2,1), imshow(img), title('Original Grayscale Image');
subplot(1,2,2), imshow(uint8(quantized_img)), title('Quantized Image (8 Levels)');
