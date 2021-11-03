% Clear all previous work
clc;
clear all;

% Enter the input sequences
x = input('Type in the reference sequence ');
y = input('Type in the second sequence ');

% Compute the correlation sequence
[Rxy, l] = xcorr(x, y);

% Display the cross correlation output
disp('Cross Correlation output is =  ');
disp(Rxy);

% Plot cross correlation graph
stem(l, Rxy);
xlabel('----> Lag');
ylabel('----> Rxy');
title('Cross Correlation');

% Verification of 1st Property
Ryx = xcorr(y, x);
if (Rxy == fliplr(Ryx))
    disp('1st property is verified');
else
    disp('1st property is not verified');
end

% Verification of 2nd Property
Rxx = xcorr(x, x);
Ryy = xcorr(y, y);
a = 0.5 * (abs(max(Rxx) + max(Ryy)));
if (max(Rxy) <= a)
    disp('2nd Property is verified');
else
    disp('2nd Property is not verified');
end
