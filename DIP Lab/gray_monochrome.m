clc;
clear all;
close all;

img = imread('onion.png');

g = 0.299*img(:,:,1) + 0.587*img(:,:,2) + 0.114*img(:,:,3);

t = input('Enter threshold value: ');

[m n] = size(g);

for i = 1:m
    for j = 1:n
        if g(i,j)>t
            bw(i,j) = 255;
        else
            bw(i,j) = 0;
        end
    end
end

subplot 311, imshow(img), title('Original Image');
subplot 312, imshow(g), title('Grayscale Image');
subplot 313, imshow(bw), title('Monochrome Image');