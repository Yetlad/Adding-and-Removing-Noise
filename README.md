# Noise Addition and Removal Using MATLAB

##  Objective
The objective of this experiment is to simulate the process of **adding noise to a signal** and **removing noise using a low-pass filter**
in MATLAB. The experiment demonstrates how noise affects a signal and how filtering can improve signal quality.

---

##  Experiment Overview
This experiment involves:
1. Generating a sinusoidal signal
2. Adding Gaussian white noise
3. Visualizing the noisy signal
4. Removing noise using a low-pass Butterworth filter
5. Evaluating the effectiveness of noise reduction

---

##  Parameters Used
| Parameter | Value |
|--------|-------|
| Sampling Frequency | 1000 Hz |
| Signal Frequency | 5 Hz |
| Signal Amplitude | 1 |
| Noise Standard Deviation | 0.5 |
| Filter Type | Butterworth Low-Pass |
| Cutoff Frequency | 10 Hz |

---

##  Results

### Original Signal
- A clean sinusoidal waveform at 5 Hz.
- Smooth and periodic with constant amplitude.

### Noisy Signal
- Gaussian white noise introduces random fluctuations.
- The signal shape becomes distorted and less recognizable.

### Filtered Signal
- High-frequency noise is significantly reduced.
- The underlying sinusoidal waveform is recovered.
- Slight amplitude attenuation may occur due to filtering.

---

##  Observations
- Adding noise degrades signal clarity and increases randomness.
- The low-pass filter effectively removes high-frequency noise.
- Choosing a cutoff frequency close to the signal frequency improves noise removal while preserving signal shape.

---



