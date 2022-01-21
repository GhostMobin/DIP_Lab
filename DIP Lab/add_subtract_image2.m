clc;
clear all;
close all;

a = imread('cameraman.tif');
b = imread('tape.png');    

[r, co] = size(a);

c = imresize(b, [r, co]);

for i = 1: r
    for j = 1:co
        add(i, j) = a(i,j) + c(i,j);
        sub(i, j) = a(i,j) - c(i,j);
    end
end

subplot 221, imshow(a), title('First Image');
subplot 222, imshow(b), title('Secound Image');
subplot 223, imshow(add), title('Addition Image');
subplot 224, imshow(sub), title('Subtracted Image');

