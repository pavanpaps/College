% Clear all previous work
clc;
clear all;

% Input the given sequences
xn = input('Enter the first sequence x(n) ');
hn = input('Enter the second sequence h(n) ');

% Find convolution of given sequences
yn = conv(xn, hn);

% Display the given output
disp('Linear convolution of x(n) & h(n) is y(n) = ');
disp(yn);

% Specify the ranges of n1, n2, n3
n1 = 0:3;
n2 = 0:3;
n3 = 0:6;

% Plot the graph of x(n) signal
subplot(3, 1, 1);
stem(n1, xn);
xlabel('-----------> n');
ylabel('------------> x(n)');
title('x(n) signal');

% Plot the graph of h(n) signal
subplot(3, 1, 2);
stem(n2, hn);
xlabel('-----------> n');
ylabel('------------> h(n)');
title('h(n) signal');

% Plot the graph of y(n) signal
subplot(3, 1, 3);
stem(n3, yn);
xlabel('-----------> n');
ylabel('------------> y(n)');
title('y(n) output');
