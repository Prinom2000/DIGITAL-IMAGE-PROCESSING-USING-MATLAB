img = imread('Picture2.jpg');
if size(img, 3) == 3
   grayImage = rgb2gray(img);
else
   grayImage = img;
end
[rows, cols] = size(grayImage);
bitPlanes = zeros(rows, cols, 8);
for k = 1:8
   bitPlanes(:, :, k) = bitget(grayImage, k);
end
figure;
for k = 1:8
   subplot(2, 4, k);
   imshow(logical(bitPlanes(:, :, k)));
   title(['Bit Plane ', num2str(k)]);
end
