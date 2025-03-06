% Read both images
img1 = imread('Picture1.png');
img2 = imread('Picture2.png');

% Ensure both images are the same size
img1 = imresize(img1, [size(img2,1), size(img2,2)]);

% Convert images to grayscale if they are RGB
if size(img1, 3) == 3
    img1 = rgb2gray(img1);
end
if size(img2, 3) == 3
    img2 = rgb2gray(img2);
end

% Convert images to binary (thresholding)
bw1 = imbinarize(img1);
bw2 = imbinarize(img2);

% Perform logical operations
and_result = bw1 & bw2; % AND operation
or_result = bw1 | bw2;  % OR operation
not_result = ~bw1;      % NOT operation (on Picture1)

% Display results
figure;
subplot(1,3,1), imshow(and_result), title('AND Operation');
subplot(1,3,2), imshow(or_result), title('OR Operation');
subplot(1,3,3), imshow(not_result), title('NOT Operation (Picture1)');
