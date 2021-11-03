% Clear all previous work
clc;
clear all;

% Add the respective sequences
x1 = [1 2 3 4];
x2 = [1 2 3 4];

% Find the value of N
N = max(length(x1) + length(x2) - 1);

% Obtain DFT's using fast fourier transform
x1 = fft(x1, N);
x2 = fft(x2, N);

% Perform Vector Multiplication
y = x1 .* x2;
yn = ifft(y, N);
disp('Linear convolution of x1 and x2 is yn= ');
disp(yn);

% Verify the output
disp('Output using convolution');
yv = conv(x1, x2);
disp(yv);

% Plot the graph
stem(yn);
title('Linear convolution output y(n)');
