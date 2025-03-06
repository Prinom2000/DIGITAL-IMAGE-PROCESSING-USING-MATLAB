img = imread('Picture2.png'); % Read image
imshow(img);
title('Select Two Points');

% Manually select two points from the image
[x, y] = ginput(2); % Click two points in the image

% Compute Euclidean distance
distance = sqrt((x(2) - x(1))^2 + (y(2) - y(1))^2);

% Display the result
disp(['Euclidean Distance between selected points: ', num2str(distance)]);

% Mark the points on the image
hold on;
plot(x, y, 'ro', 'MarkerSize', 10, 'LineWidth', 2);
line(x, y, 'Color', 'yellow', 'LineWidth', 2);
hold off;
