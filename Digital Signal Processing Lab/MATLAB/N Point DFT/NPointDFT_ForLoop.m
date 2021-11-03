% Clear all previous work
clc;
clear all;

% Input of x[n] Sequence
x = [1, 2, 3, 6];

N = 8; % N points

% Alternate for loop for fourier transform
for k = 0:N - 1
    xk(k + 1) = 0;
    for n = 0:N - 1
        xk(k + 1) = xk(k + 1) + (n + 1) * exp(- j * 2 * pi * n * k / N);
    end
end

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
stem(n1, x);
xlabel('n');
ylabel('x[n]');
title('original signal');
