clc;
clear all;
close all;

a = imread('cameraman.tif');
b = imread('tape.png');    

c = imresize(a, [300, 300]);
d = imresize(b, [300, 300]);

for i = 1: 300
    for j = 1:300
        add(i, j) = c(i,j) + d(i,j);
        sub(i, j) = c(i,j) - d(i,j);
    end
end

subplot 221, imshow(a), title('First Image');
subplot 222, imshow(b), title('Secound Image');
subplot 223, imshow(add), title('Addition Image');
subplot 224, imshow(sub), title('Subtracted Image');