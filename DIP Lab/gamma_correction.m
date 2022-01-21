clc;
clear all;
close all;

img = imread('cameraman.tif');
% img = rgb2gray(img);    %If the image is rgb

d = im2double(img);
c = 1;
gamma = input('Enter the gamma value: ');

p = c*d.^gamma;

maxval = max(p(:));
minval = min(p(:));

[m n] = size(img);

for i = 1:m
    for j = 1:n
        g(i,j) = 255*p(i,j)/(maxval - minval);
    end
end
g = uint8(g);

figure, imshow(img), title('Original Image');
figure, imshow(g), title('Gamma corrected Image');
