img = imread('Picture3.jpg');

% Convert to grayscale if the image is RGB
if size(img, 3) == 3
    img = rgb2gray(img);
end

% Adjust contrast using imadjust
adjusted_img = imadjust(img, stretchlim(img), []);

% Display original and contrast-adjusted images
figure;
subplot(1,2,1), imshow(img), title('Original Image');
subplot(1,2,2), imshow(adjusted_img), title('Contrast Adjusted Image');
