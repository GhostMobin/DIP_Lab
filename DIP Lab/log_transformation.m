clc;
clear all;
close all;

img = imread('peppers.png');

b = im2double(img);

c = 1;
f = c*log(1+b);

figure, imshow(img), title('Original Image');
figure, imshow(f), title('Log transformed Image');
