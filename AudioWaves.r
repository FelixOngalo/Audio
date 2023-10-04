# Load necessary packages
install.packages("audio")
install.packages("signal")
library(audio)
library(signal)

# Parameters
duration_seconds <- 5  # Duration of the audio in seconds
sample_rate <- 44100   # Audio sampling rate (samples per second)
frequency <- 440       # Frequency of the square wave in Hz
amplitude <- 0.5      # Amplitude of the square wave

# Create a time vector
t <- seq(0, duration_seconds, by = 1/sample_rate)

# Generate a square wave
square_wave <- amplitude * square(2 * pi * frequency * t)

# Play the generated audio
play(audio_data = square_wave, rate = sample_rate)

# Visualize the square wave
plot(t, square_wave, type = "l", xlab = "Time (s)", ylab = "Amplitude", main = "Square Wave")

# Perform basic signal analysis (e.g., calculate RMS)
rms_value <- sqrt(mean(square_wave^2))
cat("Root Mean Square (RMS) Value:", rms_value, "\n")

# Save the audio to a WAV file
writeWave(square_wave, "square_wave_audio.wav")

# You can also plot the audio waveform using the 'tuneR' package
# install.packages("tuneR")
# library(tuneR)
# wave <- Wave(square_wave, samp.rate = sample_rate)
# plot(wave)
