# MATLAB Audio Analysis Scripts

This repository contains two MATLAB scripts designed for analyzing mono audio files and generating three types of visualizations:
1. **Waveform** (Time Domain)
2. **Spectrum** (Frequency Domain)
3. **Spectrogram** (Time-Frequency Domain)

The scripts are particularly useful for exploring animal sound data or other types of acoustic signals.

---

## Scripts Overview

### 1. `signal_analysis.m`
- **Purpose**: Reads a mono audio file and generates waveform, spectrum, and spectrogram plots using a standard frequency scale.
- **Key Features**:
  - Uses a linear frequency scale for the spectrogram.
  - Employs a fast Fourier transform (FFT) for spectrum analysis.
- **Output Plots**:
  - Waveform (Time Domain)
  - Spectrum (Frequency Domain)
  - Spectrogram (Time-Frequency Domain with a linear scale)

![Signal Analysis Output - Waveform](images/signal_analysis_waveform.png)
![Signal Analysis Output - Spectrum](images/signal_analysis_spectrum.png)
![Signal Analysis Output - Spectrogram](images/signal_analysis_spectrogram.png)

---

### 2. `signal_analysis_v2.m`
- **Purpose**: Similar to `signal_analysis.m`, but generates the spectrogram using the mel frequency scale.
- **Key Features**:
  - Incorporates the `melSpectrogram` function for a perceptually meaningful spectrogram.
  - Aligns better with human auditory perception, ideal for analyzing animal vocalizations.
- **Output Plots**:
  - Waveform (Time Domain)
  - Spectrum (Frequency Domain)
  - Mel Spectrogram (Time-Frequency Domain with a mel scale)

![Signal Analysis v2 Output - Waveform](images/signal_analysis_v2_waveform.png)
![Signal Analysis v2 Output - Spectrum](images/signal_analysis_v2_spectrum.png)
![Signal Analysis v2 Output - Mel Spectrogram](images/signal_analysis_v2_mel_spectrogram.png)

---

## Usage

### Prerequisites
1. Ensure MATLAB is installed with support for audio processing functions.
2. Place your mono audio file (e.g., `002_cut_audacity.wav`) in the same directory as the scripts or provide the full path.

### Running the Scripts
1. Open MATLAB and set the working directory to the folder containing the scripts.
2. Run the desired script:
   ```matlab
   % For signal_analysis.m
   signal_analysis;

   % For signal_analysis_v2.m
   signal_analysis_v2;
