% Clear all previous sequences
clc;
clear all;

% Enter the input sequences
y = input('The output sequence y(n) of the system= ');
x = input('the input sequence of the system= ');

% Compute deconvolution
h = deconv(y, x);

% Display deconvolution output
disp('the impulse response of the system is=');
disp(h);

% graphical display of impulse response
N = length(h);
n = 0:1:N - 1;
stem(n, h);
xlabel('Time index n');
ylabel('Amplitude');
title('impulse response of a system')

% Verification of impulse response
yv = conv(x, h);
disp('the verified output sequence is');
disp(yv);
