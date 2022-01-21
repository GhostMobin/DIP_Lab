clc;
clear all;
close all;

a = imread('onion.png');
g = rgb2gray(a);

[m n] = size(g);

for i = 1:m
    for j = 1:n
        t = de2bi(g(i,j),8,'right-msb');
        b1(i,j) = t(1,1);
        b2(i,j) = t(1,2);
        b3(i,j) = t(1,3);
        b4(i,j) = t(1,4);
        b5(i,j) = t(1,5);
        b6(i,j) = t(1,6);
        b7(i,j) = t(1,7);
        b8(i,j) = t(1,8);
    end
end

subplot 331, imshow(a), title('Original Image', 'color', 'b');
subplot 332, imshow(logical(b1)), title('Bit Plane 1', 'color', 'b');
subplot 333, imshow(logical(b2)), title('Bit Plane 2', 'color', 'b');
subplot 334, imshow(logical(b3)), title('Bit Plane 3', 'color', 'b');
subplot 335, imshow(logical(b4)), title('Bit Plane 4', 'color', 'b');
subplot 336, imshow(logical(b5)), title('Bit Plane 5', 'color', 'b');
subplot 337, imshow(logical(b6)), title('Bit Plane 6', 'color', 'b');
subplot 338, imshow(logical(b7)), title('Bit Plane 7', 'color', 'b');
subplot 339, imshow(logical(b8)), title('Bit Plane 8', 'color', 'b');

