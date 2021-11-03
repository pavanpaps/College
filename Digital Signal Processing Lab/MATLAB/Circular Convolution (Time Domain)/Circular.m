% Clear all previous work
clc;
clear all;

% Input the sequences
x1 = [1 2 3 4];
x2 = [1 2 3 4];
N = max(length(x1), length(x2));

% Compute the output
for n = 0:N - 1
    y(n + 1) = 0;
    for k = 0:N - 1
        i = mod((n - k), N); % calculation of x index
        if i < 0
            i = i + N;
        end % end of if
        y(n + 1) = y(n + 1) + x2(k + 1) * x1(i + 1);
    end;
end;
disp('circular convolution x1 & x2 is y= ');
disp(y);

% Plot the graph
n1 = 0:N - 1;
stem(n1, y);
title('Circular convolution output y(n)');
