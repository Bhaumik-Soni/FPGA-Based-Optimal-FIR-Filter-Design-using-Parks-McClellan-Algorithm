# FPGA-Based-Optimal-FIR-Filter-Design-using-Parks-McClellan-Algorithm
# FPGA Implementation of an Optimal FIR Filter Using the Parks-McClellan Algorithm

## Project Overview
[cite_start]This project demonstrates the design and hardware realization of a **21-tap low-pass Finite Impulse Response (FIR) filter**[cite: 18, 54]. [cite_start]The filter is optimized using the **Parks-McClellan (Remez Exchange) algorithm** to achieve an equiripple characteristic by minimizing the maximum frequency-response error[cite: 36, 68].

[cite_start]The system processes a square-wave signal in real-time to remove high-frequency harmonics, resulting in a smooth, filtered output suitable for digital signal processing applications[cite: 17, 55].

## Technical Specifications
* [cite_start]**Filter Type:** 21-tap Optimal Low-Pass FIR[cite: 18, 79].
* [cite_start]**Algorithm:** Parks-McClellan (Remez Exchange) for minimum-error equiripple response[cite: 22, 82].
* [cite_start]**Architecture:** Shift-Register + Multiply-Accumulate (MAC) structure[cite: 23, 104].
* [cite_start]**Fixed-Point Arithmetic:** Coefficients scaled to **16-bit signed integers**[cite: 22, 101].
* [cite_start]**Hardware:** Xilinx Spartan-6 XC6SLX9 FPGA[cite: 26, 70].
* [cite_start]**Clock Frequency:** 50 MHz board clock[cite: 37, 139].

## Key Features
* [cite_start]**Internal Test Generation:** Includes a frequency divider that produces a ~3 Hz square wave, making the filtering effect clearly visible on an oscilloscope[cite: 24, 157].
* [cite_start]**Real-Time Processing:** Executes convolution at full hardware speed (50 MHz)[cite: 136, 223].
* [cite_start]**Hardware Verification:** Successful validation using a Digital Storage Oscilloscope (DSO), showing significant harmonic reduction and signal smoothing[cite: 31, 73].

## Repository Structure
* [cite_start]`/src`: Verilog source files (`fir_filter.v`, `test_gen.v`, `top.v`)[cite: 108, 142, 169].
* [cite_start]`/constraints`: Physical pin mapping (`.ucf` file)[cite: 29, 197].
* [cite_start]`/docs`: Project report and implementation methodology[cite: 49, 97].

## Hardware Results
[cite_start]The output waveform demonstrates the effective suppression of high-frequency components, transforming a sharp square wave into a smoothed signal[cite: 28, 58].

---
[cite_start]**Prepared by:** Bhaumik Soni [cite: 12, 51]  
[cite_start]**Mentored by:** Dr. Arpita Patel [cite: 11, 52]  
[cite_start]**Institution:** CHARUSAT - Chandubhai S. Patel Institute of Technology [cite: 40, 42]
