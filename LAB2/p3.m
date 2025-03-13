img = imread('Picture3.jpg');
gray_img = rgb2gray(img);

gray_img = double(gray_img) / 255;


c_log = 1;  
log_transformed = c_log * log(1 + gray_img);


gamma_values = [0.4, 1, 2.5];  % Different gamma values
power_transformed_1 = gray_img .^ gamma_values(1);
power_transformed_2 = gray_img .^ gamma_values(2);
power_transformed_3 = gray_img .^ gamma_values(3);

figure;

subplot(2, 3, 1);
imshow(img);
title('Original Image');

subplot(2, 3, 2);
imshow(log_transformed);
title('Log Transformation');

subplot(2, 3, 3);
imshow(power_transformed_1);
title(['Power-law (Gamma = ', num2str(gamma_values(1)), ')']);

subplot(2, 3, 4);
imshow(power_transformed_2);
title(['Power-law (Gamma = ', num2str(gamma_values(2)), ')']);

subplot(2, 3, 5);
imshow(power_transformed_3);
title(['Power-law (Gamma = ', num2str(gamma_values(3)), ')']);

