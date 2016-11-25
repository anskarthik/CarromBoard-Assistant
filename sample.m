I_org = imread('board.jpg');
I = imresize(rgb2gray(I_org), 0.4);
BW = edge(I,'canny');
imshow(BW);

figure(1), imshow(I)
figure(2)
gray_image = rgb2gray(I);
imshow(gray_image);
d = imdistline;

[centers, radii] = imfindcircles(I,[6 15],'ObjectPolarity','dark',...
    'Sensitivity',0.9);
figure(1), imshow(I);
h = viscircles(centers,radii);
