% Clear all previous work
clc;
clear all;
close all;

n = 100;
x = [ones(1, 20) zeros(1, 20) ones(1, 20) zeros(1, 20) ones(1, 20)];

% Subplot of input signal
subplot(4, 1, 1);
plot(x);
title('Input signal');
xlabel('Number of samples');
ylabel('Amplitude');

f = 1 * 10 ^ 6;
fs = 10 * 10 ^ 6;
for i = 0:n - 1
    d(i + 1) = sin(2 * pi * (f / fs) * i);
end

% Subplot of carrier signal
subplot(4, 1, 2);
plot(d);
title('Carrier signal');
xlabel('Number of samples');
ylabel('Amplitude');

for i = 0:n - 1
    if (x(i + 1) == 0)
        x(i + 1) = sin(2 * pi * (f / fs) * i);
    else
        x(i + 1) = sin(2 * pi * (f / fs) * i + pi);
    end
end

% Subplot of PSK signal
subplot(4, 1, 3);
plot(x);
title('PSK Signal');
xlabel('Number of samples');
ylabel('Amplitude');

for i = 0:n - 1
    if (x(i + 1) == sin(2 * pi * (f / fs) * i))
        x(i + 1) = 0;
    else
        x(i + 1) = 1;
    end
end

subplot(4, 1, 4);
plot(x);
title('Demodulated Signal');
xlabel('Number of samples');
ylabel('Amplitude');

