% Clear all previous work
clc;
clear all;

% Input the given sequences
x1 = [1 2 3 4];
x2 = [1 2 3 4];
N = max(length(x1), length(x2));

% Compute the output
y = cconv(x1, x2, N)

% Display the convoluted sequence
disp('circlular convolution x1 & x2 is y= ');
disp(y);

% Plot the graph
n1 = 0:N - 1;
stem(n1, y);
title('Circular convolution output y(n)');
