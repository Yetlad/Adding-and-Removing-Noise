%% Noise Addition and Removal Using Low-Pass Filtering
% Objective:
% Simulate adding Gaussian white noise to a sinusoidal signal
% and remove the noise using a low-pass Butterworth filter.

clear; close all; clc;

%% Parameters
fs = 1000;                 % Sampling frequency (Hz)
t = 0:1/fs:1;              % Time vector (1 second duration)
f_signal = 5;              % Signal frequency (Hz)
amplitude = 1;             % Signal amplitude
noise_std = 0.5;           % Noise standard deviation
cutoff_frequency = 10;     % Low-pass filter cutoff frequency (Hz)

%% Generate Original Signal
original_signal = amplitude * sin(2*pi*f_signal*t);

%% Add Gaussian White Noise
noise = noise_std * randn(size(t));
noisy_signal = original_signal + noise;

%% Plot Original and Noisy Signals
figure;
subplot(2,1,1);
plot(t, original_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Sinusoidal Signal');
grid on;

subplot(2,1,2);
plot(t, noisy_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal with Added Gaussian White Noise');
grid on;

%% Low-Pass Butterworth Filter Design
filter_order = 4;
normalized_cutoff = cutoff_frequency / (fs/2);
[b, a] = butter(filter_order, normalized_cutoff, 'low');

%% Apply Filter
filtered_signal = filtfilt(b, a, noisy_signal);

%% Plot Filtered Signal
figure;
plot(t, filtered_signal, 'r');
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Signal (After Noise Removal)');
grid on;

%% Comparison Plot
figure;
plot(t, original_signal, 'b', 'LineWidth', 1.2); hold on;
plot(t, noisy_signal, 'k');
plot(t, filtered_signal, 'r', 'LineWidth', 1.2);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal Comparison');
grid on;
