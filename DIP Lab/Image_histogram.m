clc;
clear all;
close all;

I = imread('onion.png');

h = zeros(1,256);
[m n] = size(I);

for i = 1:m
    for j = 1:n
        h(I(i,j)+1) = h(I(i,j)+1)+1;
    end
end

subplot 211, imshow(I), title('Image');
subplot 212, stem(h), title('Histogram of the Image');
