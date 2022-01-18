% Clear all previous work
clear all;
clc;
close all;

A = 5; t = 0:.001:1;
f1 = input('Carrier Sine wave frequency = '); % Carrier Sine 20hz
f2 = input('Message frequency = '); % message 10hz
x = A .* sin(2 * pi * f1 * t); % Carrier Sine 20hz

figure(1)
subplot(4, 1, 1);
plot(t, x);
xlabel('time');
ylabel('Amplitude');
title('Carrier');
grid on;

u = square(2 * pi * f2 * t); % Message signal
subplot(4, 1, 2);
plot(t, u);
xlabel('time');
ylabel('Amplitude');
title('Message Signal');
grid on;

v = x .* u; % Sine wave multiplied with square wave
subplot(4, 1, 3);
plot(t, v);
xlabel('time');
ylabel('y');
title('PSK');
grid on;

d = v ./ x; % Sine wave multiplied with square wave
subplot(4, 1, 4);
plot(t, d);
xlabel('time');
ylabel('y');
title('Demodulated PSK');
grid on;

