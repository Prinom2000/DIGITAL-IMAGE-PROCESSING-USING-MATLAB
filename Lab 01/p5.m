% Read both images
img1 = imread('Picture1.png'); 
img2 = imread('Picture2.png'); 

% Ensure both images are of the same size
img1 = imresize(img1, [size(img2,1), size(img2,2)]);


% Perform arithmetic operations
addition = imadd(img1, img2);       % Image addition
subtraction = imsubtract(img1, img2); % Image subtraction
multiplication = immultiply(img1, img2); % Image multiplication
division = imdivide(img1, img2); % Image division (avoid division by zero)

% Display the results
figure;
subplot(2,2,1), imshow(addition), title('Addition');
subplot(2,2,2), imshow(subtraction), title('Subtraction');
subplot(2,2,3), imshow(multiplication), title('Multiplication');
subplot(2,2,4), imshow(division, []), title('Division');
