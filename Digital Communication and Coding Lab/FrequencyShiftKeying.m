clc;
close all;
clear all;

fc1 = input('Enter the frequency of 1st Sine Wave carrier: '); % 20HZ
fc2 = input('Enter the frequency of 2nd Sine Wave carrier: '); % 40HZ
fp = input('Enter the frequency of Periodic Binary pulse (Message): '); % 5
amp = input('Enter the amplitude (For Both Carrier & Binary Pulse Message): '); % 5
amp = amp / 2;
t = 0:0.001:1;
c1 = amp .* sin(2 * pi * fc1 * t);
c2 = amp .* sin(2 * pi * fc2 * t);

figure(1)
subplot(5, 1, 1);
plot(t, c1)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 1 Wave')

subplot(5, 1, 2)
plot(t, c2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 2 Wave')
m = amp .* square(2 * pi * fp * t) + amp;

subplot(5, 1, 3)
plot(t, m)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
for i = 0:1000
    if m(i + 1) == 0
        mm(i + 1) = c2(i + 1);
    else
        mm(i + 1) = c1(i + 1);
    end
end

subplot(5, 1, 4)
plot(t, mm)
xlabel('Time')
ylabel('Amplitude')
title('Modulated Wave')
for i = 0:1000
    if mm(i + 1) == c2(i + 1)
        dm(i + 1) = m(i + 1);
    else
        dm(i + 1) = m(i + 1);
    end;
end;

subplot(5, 1, 5);
plot(t, dm);
xlabel('Time');
ylabel('Amplitude');
title('Demodulated signal');

