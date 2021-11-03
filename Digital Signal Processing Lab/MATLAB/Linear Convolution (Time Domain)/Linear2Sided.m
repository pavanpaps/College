% Clear all the previous work
clc;
clear all;

% Enter the input sequences
x1 = [1 2 3 2 1 3 4];
n1 = - 3:3;
x2 = [2 - 3 4 - 1 0 1];
n2 = - 1:4;

% Specify the beginning and ending of the sequences
ybegin = n1(1) + n2(1);
yend = n1(length(x1)) + n2(length(x2));
ny = [ybegin:yend];

% Convolute the input sequences
y = conv(x1, x2);

% Display the convoluted output
disp('Linear convolution of x1 and x2 is y= ');
disp(y);

% Plot convoluted output graph
subplot(2, 1, 1);
stem(ny, y);
xlabel('Time index n');
ylabel('Amplitude');
title('Convolution output');

% Plot the graph of x1
subplot(2, 2, 3);
stem(n1, x1);
title('Plot of x1');
xlabel('Time index n');
ylabel('Amplitude of x1');
title('Plot of x1');

% Plot the graph of x2
subplot(2, 2, 4);
stem(n2, x2);
xlabel('Time index n');
ylabel('Amplitude of x2');
title('Plot of x2');
