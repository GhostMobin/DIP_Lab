clc;
clear all;
close all;

img = imread('tape.png');

L=2^8;
neg=(L-1)-img;

subplot 211, imshow(img), title('Original Image');
subplot 212, imshow(neg), title('Negative Image');