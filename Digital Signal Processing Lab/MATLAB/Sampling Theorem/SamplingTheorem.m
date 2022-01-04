% Clear all previous work
clc;
clear all;

tfinal = 0.05;
t = 0:0.00005:tfinal;
fd = input('Enter analog freuency ');

% Define analog signal for comparison
xt = sin(2 * pi * fd * t);

% Simulate condition for undersampling i.e., fs1<2*fd
fs1 = 1.3 * fd;

% Define the time vector
n1 = 0:1 / fs1:tfinal;

% Generate the undersampled signal
xn = sin(2 * pi * n1 * fd);

% Plot the analog & sampled signals
subplot(3, 1, 1);
plot(t, xt, 'b', n1, xn, 'r*-');
title('undersampling plot');

% Condition for Nyquist plot
fs2 = 2 * fd;
n2 = 0:1 / fs2:tfinal;
xn = sin(2 * pi * fd * n2);
subplot(3, 1, 2);
plot(t, xt, 'b', n2, xn, 'r*-');
title('Nyquist plot');

% Condition for oversampling
fs3 = 5 * fd;
n3 = 0:1 / fs3:tfinal;
xn = sin(2 * pi * fd * n3);
subplot(3, 1, 3);
plot(t, xt, 'b', n3, xn, 'r*-');
title('Oversampling plot');
xlabel('Time');
ylabel('Amplitude');
legend('Analog', 'Discrete');