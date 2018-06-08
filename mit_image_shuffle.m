
clc; clear all; close all;
im=imread('mystery_number_scrambled.jpg');

%Show image
figure(1); imshow(sort(im));

%Matrix to Array
B = reshape(im',[1,284160]);
im_temp = im';
%B=im_temp(:);

%Load the shuffle indices
load shuffle_order.txt;
order = shuffle_order(:,1);

%Preallocate memory
original=zeros(1,length(order));

%Unshuffle 
for count = 1:1:length(order)
temp = order(count);
original(temp+1) = B(count);   
end

N = (original');
%Array to Matrix
y = reshape(N',[480,592]);

%Show image
figure(3);imshow((y'))


M = dlmread('output.txt');
%M=fliplr(M');

tf = isequal(N,M)
im_res=imread('unscrambled.jpg');

y_test = reshape(M',[480,592]);
figure(4);imshow((y_test'))