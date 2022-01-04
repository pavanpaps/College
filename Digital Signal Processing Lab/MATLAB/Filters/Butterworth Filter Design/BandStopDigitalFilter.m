% Clear all previous work
clc;
clear all;

% Given specifications
Ap = 3;
As = 18;
f1 = 25;
fL = 100;
fH = 150;
f2 = 225;
fs = 1000;

% To find Order(N) and cutoff frequency (fc)
fpbn = [fL / (fs / 2), fH / (fs / 2)];
fsbn = [f1 / (fs / 2), f2 / (fs / 2)];
[N, fc] = buttord(fpbn, fsbn, Ap, As);
display('order of the filter is =');
display(N);

% To compute frequency response of an IIR digital filter
[b, a] = butter(N, fc, 'stop');
[H, f] = freqz(b, a, 256, fs);
subplot(3, 1, 1);
plot(f, (abs(H)));
title('Frequency responce of Band stop filter');
xlabel('-------> Frequency in Hz');
ylabel('-------> Magnitude');

% Filtering operation on input singal having frequency 10Hz,125Hz,400Hz
n = 0:1 / fs:0.1;
s1 = 5 * sin(2 * pi * 10 * n);
s2 = 5 * sin(2 * pi * 125 * n);
s3 = 5 * sin(2 * pi * 400 * n);

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
