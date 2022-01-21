clc;
clear all;
close all;

I = imread('logo.tif');
% I = rgb2gray(I);    %If the image is rgb

[m n] = size(I);

z = input('Enter zooming factor: ');

for i = 1:m*z;
    for j = 1:n*z;
        p = ceil(i/z);
        q = ceil(j/z);
        zoom(i,j) = I(p,q);
    end
end

s = input('Enter shrinking factor: ');

for i = 1:m/s;
    for j = 1:n/s;
        p = floor(i*s);
        q = floor(j*s);
        shrink(i,j) = I(p,q);
    end
end

figure, imshow(I), title('Original Image');
figure, imshow(zoom), title('Zoomed Image');
figure, imshow(shrink), title('Shrinked Image');
