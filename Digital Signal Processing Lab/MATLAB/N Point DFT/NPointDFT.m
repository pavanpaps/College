% Clear previous work
clc;
clear all;

% enter the x[n] sequence
x = [1, 2, 3, 6];
N = 4; % N Points

% Perform fourier transform operation
xk = fft(x, N);
n = 0:1:N - 1;

% Plot of magnitude Spectrum
figure(1);
stem(n, abs(xk));
xlabel('k');
ylabel('l xk l');
title('Magnitude spectrum');

% Plot of phase Spectrum
figure(2);
stem(n, angle(xk));
xlabel('k');
ylabel('angle(xk)');
title('phase spectrum');

% Plot of original Signal
figure(3);
n1 = 0:1:length(x) - 1;
stem (n1, x);
xlabel ('n');
ylabel ('x[n]');
title ('original signal');
