% Clear all previous work
clc;
clear all;

% Enter the input sequences
x1 = [1 2 3 4];
x2 = [1 2 3 4];

% Enter the value of N
N = max(length(x1), length(x2));

% Perform the DFT calculation
x1 = fft(x1, N);
x2 = fft(x2, N);
y = x1 .* x2;

% Perform the IDFT calculation
yn = ifft(y, N);

% Display the output of IDFT
disp('circular convolution of x1 and x2 is yn= ');
disp(yn);

% Verify the result
stem(yn);
title('circular convolution output y(n)');
