% Clear all previous work
clc;
clear all;

% To find step response
N = input('Length of response required = ');
b = [1]; % x[n] coefficient
a = [1, - 1, 0.9]; % y coefficients


x = [ones(1, N)]; % step input
n = 0:1:N - 1;

% time vector for plotting
y = filter(b, a, x); % step response

% plot the waveforms
subplot(2, 1, 1);
stem(n, x);
title('step input');
xlabel('n');
ylabel('u(n)');
subplot(2, 1, 2);
stem(n,h);
title('step response');
xlabel('n');
ylabel('y(n)');