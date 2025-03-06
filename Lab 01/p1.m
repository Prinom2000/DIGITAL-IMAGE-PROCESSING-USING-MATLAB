I = imread('Picture1.png');
imshow(I);
BW = imbinarize(rgb2gray(I));
P4 = bwperim(BW, 4);
P8 = bwperim(BW, 8);

figure;
subplot(1,2,1), imshow(P4), title('4-Connected Perimeter');
subplot(1,2,2), imshow(P8), title('8-Connected Perimeter');