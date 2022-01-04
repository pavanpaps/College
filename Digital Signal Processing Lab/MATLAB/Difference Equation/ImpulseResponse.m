% Clear all previous stuff
clc;
clear all;

% To find Impulse Response
N = input('Length of response required = ');
b = [1]; % x[n] coefficient
a = [1, - 1, 0.9]; % ycoefficients

% Impulse input
x = [1, zeros(1, N - 1)];

% Time vector for plotting
n = 0:1:N - 1;

% Impulse response
h = filter(b, a, x);

% Plot the waveforms
subplot(2, 1, 1);
stem(n, x);
title('Impulse input');
xlabel('n');
ylabel('delta(n)');
subplot(2, 1, 2);
stem(n, h);
title('Impulse response');
xlabel('n');
ylabel('h(n)');