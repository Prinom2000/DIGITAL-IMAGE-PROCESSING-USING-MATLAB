img = imread('C:\Users\Students\Desktop\Matlab1\ewu.jpg');
imshow(img);

resized_img = imresize(img, [200, 200]);
imshow(resized_img);

rotated_img = imrotate(img, 30);
imshow(rotated_img);