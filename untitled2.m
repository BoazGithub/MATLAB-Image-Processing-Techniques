clc;
clear all;
% Load the noisy image and the template image
img = imread('einstein.jpg');
template = imread('einstein.jpg');

% Use the normxcorr2 function to perform template matching
c = normxcorr2(template, img);

% Find the maximum value in the correlation matrix, which indicates the location of the target
[max_c, imax] = max(abs(c(:)));
[ypeak, xpeak] = ind2sub(size(c),imax(1));

% Adjust the coordinates of the target to account for the padding added by normxcorr2
corr_offset = [(xpeak-size(template,2)) (ypeak-size(template,1))];

% Display the detected target in the noisy image
figure;
imshow(img);
hold on;
rectangle('Position', [corr_offset(1)+1 corr_offset(2)+1 size(template,2) size(template,1)], 'EdgeColor', 'g', 'LineWidth', 2);
