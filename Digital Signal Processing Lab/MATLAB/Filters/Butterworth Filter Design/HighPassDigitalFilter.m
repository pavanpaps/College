% Clear all previous work
clc;
clear all;

% Given specifications
Ap = 1.25;
As = 15;
fpb = 300;
fsb = 200;
fs = 2000;

% To find Order(N) and cutoff frequency (fc)
fpbn = fpb / (fs / 2);
fsbn = fsb / (fs / 2);
[N, fc] = buttord(fpbn, fsbn, Ap, As);
display('order of the filter is =');
display(N);
display(' cutoff frequency is = ');
display(fc * fs / 2);

% To compute frequency response of an IIR digital filter
[b, a] = butter(N, fc, 'high');
[H, f] = freqz(b, a, 256, fs);
subplot(3, 1, 1);
plot(f, abs(H));
title('Frequency response of High Pass filter');
xlabel('-------> Frequency in Hz');
ylabel('-------> Magnitude');

% Filtering operation on input singal having frequency 10Hz,100Hz,500Hz
n = 0:1 / fs:0.1;
s1 = 5 * sin(2 * pi * 10 * n);
s2 = 5 * sin(2 * pi * 100 * n);
s3 = 5 * sin(2 * pi * 500 * n);
x = [s1 s2 s3];
subplot(3, 1, 2);
plot(x);
title('Input signal');
xlabel('----------> n');
ylabel('----------> Amplitude');

y = filter(b, a, x);
subplot(3, 1, 3);
plot(y);
title('Filtered output signal');
xlabel('----------> n');
ylabel('----------> Amplitude');
