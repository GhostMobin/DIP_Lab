clc;
clear all;
close all;

I = imread('cameraman.tif');
% I = rgb2gray(I);    %If the image is rgb
d = im2double(I);

[r,c] = size(I);

f = zeros(r,c);

for i = 1:r-2
    for j = 1:c-2
        sum = 0;
        for k = i:i+2
            for l = j:j+2
                sum = sum+d(k,l);
            end
        end
        f(i+1,j+1) = sum/9;
    end
end

figure, imshow(I), title('Original Image');
figure, imshow(f), title('Smooth Image');
