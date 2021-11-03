% Clear all previous work
clc;
clear all;

% Ask user input of the given sequence
xn = input('enter the sequence xn= ');
n = 0:length(xn) - 1;

% Auto correlate the given signal
[rxx, l] = xcorr(xn);

% Display the output on the console
disp('Auto Correleation of given sequence: ');
disp(rxx);

% Plot the input sequence
subplot(2, 1, 1);
stem(n, xn);
xlabel('---->n');
ylabel('---->x(n)');
title('Input Sequence');

% Plot auto correlated graph
subplot(2, 1, 2);
stem(l, rxx);
xlabel('---->lag');
ylabel('---->rxx(l)');
title('Auto correlation');

% Verification of 1st Property
r1xx = fliplr(rxx);
if (r1xx == rxx)
    disp('rxx is Symmetric, First Property is verified');
else
    disp('rxx is not symmetric, First Property is not verified');
end

% Verification of 2nd Property
m = max(rxx);
N = length(xn);
if (m == (rxx(N)))
    disp('Maximum at origin, 2nd Property is Verified');
else
    disp('Maximum is not at origin, 2nd Property is not verified');
end

% Verification of 3rd Property
en = 0.0;
for i = 1:N
    y = (xn(i) * xn(i));
    en = en + y;
end

% Finding the energy of the sequence
disp('Energy of the Sequence');
disp(en);
disp(rxx(N));

% Verification of energy property
if (en == int8(rxx(N)))
    disp('Energy Property is Verified');
else
    disp('Energy Property is not Verified');
end
