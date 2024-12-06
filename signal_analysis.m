% Load an example animal sound file
% You can replace this with your own animal sound file path
[signal, fs] = audioread('002_cut_audacity.wav'); % 'signal' contains the audio data, 'fs' is the sampling frequency

% Time vector for plotting
% Creates a time vector 't' from 0 to the length of the signal minus 1, divided by the sampling frequency
t = (0:length(signal)-1)/fs;

% Create a figure with 3 subplots
figure;

% Plot the waveform (time domain)
subplot(3, 1, 1); % Create the first subplot in a 3x1 grid
plot(t, signal); % Plot the signal against the time vector
title('Time Domain (Waveform)'); % Title for the first plot
xlabel('Time (s)'); % X-axis label for the first plot
ylabel('Amplitude'); % Y-axis label for the first plot

% Compute and plot the spectrum (frequency domain)
subplot(3, 1, 2); % Create the second subplot in a 3x1 grid
nfft = length(signal); % Number of points in FFT, equal to the length of the signal
f = (0:nfft-1)*(fs/nfft); % Frequency vector for plotting
signal_fft = abs(fft(signal, nfft)); % Compute the magnitude of the FFT of the signal
plot(f(1:floor(nfft/2)), signal_fft(1:floor(nfft/2))); % Plot the FFT result for positive frequencies
title('Frequency Domain (Spectrum)'); % Title for the second plot
xlabel('Frequency (Hz)'); % X-axis label for the second plot
ylabel('Magnitude'); % Y-axis label for the second plot

% Compute and plot the spectrogram (time–frequency domain) with jet color scheme
subplot(3, 1, 3); % Create the third subplot in a 3x1 grid
spectrogram(signal, 1024, [], [], fs, 'yaxis'); % Compute and plot the spectrogram
colormap('jet'); % Apply the 'jet' colormap to the spectrogram
title('Time-Frequency Domain (Spectrogram)'); % Title for the third plot
xlabel('Time (s)'); % X-axis label for the third plot
ylabel('Frequency (kHz)'); % Y-axis label for the third plot (note the unit is kHz for better readability)

% Adjust the layout
sgtitle('Animal Sound Visualization in Time, Frequency, and Time-Frequency Domains'); % Super title for the entire figure
