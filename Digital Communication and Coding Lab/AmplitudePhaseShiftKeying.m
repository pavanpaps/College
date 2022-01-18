clc;
close all;
clear all;

fc = input('Enter the frequency of sine carrier wave: ');
fm = input('Enter the frequency of modulating Binary signal: ');
amp1 = input('Enter the amplitude of Carrier signal: ');
amp2 = input('Enter the amplitude of Modulating signal: ');
amp1 = amp1 / 2;
amp2 = amp2 / 2;
t = 0:0.001:1;
c1 = amp1 .* sin(2 * pi * fc * t);

subplot(4, 1, 1);
plot(t, c1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Wave');

m = amp2 .* square(2 * pi * fm * t) + amp2;

subplot(4, 1, 2);
plot(t, m);
xlabel('Time');
ylabel('Amplitude');
title('Modulating Wave');

for i = 0:1000
    if (m(i + 1) == 0)
        mm(i + 1) = c1(i + 1);
    else
        mm(i + 1) = 0;
    end
end

subplot(4, 1, 3);
plot(t, mm);
xlabel('Time');
ylabel('Amplitude');
title('Modulated Wave');

for i = 0:1000
    if mm(i + 1) == c1(i + 1)
        dm(i + 1) = m(i + 1);
    else
        dm(i + 1) = m(i + 1);
    end
end

subplot(4, 1, 4);
plot(t, dm);
xlabel('Time');
ylabel('Amplitude');
title('Demodulated Wave');

