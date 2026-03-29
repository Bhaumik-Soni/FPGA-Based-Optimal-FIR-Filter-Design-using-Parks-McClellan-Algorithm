# 🚀 FPGA-Based Optimal FIR Filter Design using Parks-McClellan Algorithm

## 📌 Project Overview

This project focuses on the design and FPGA implementation of a **21-tap low-pass Finite Impulse Response (FIR) filter** using the **Parks-McClellan (Remez Exchange) algorithm**.

The objective is to achieve an **optimal equiripple frequency response**, minimizing maximum error between desired and actual response. The designed filter is implemented on an FPGA to perform **real-time signal filtering**, demonstrating efficient hardware-based digital signal processing.

The system takes a square-wave input signal and suppresses its high-frequency harmonics, producing a smoother output waveform.

---

## ⚙️ Technical Specifications

* **Filter Type:** 21-Tap Low-Pass FIR Filter
* **Design Algorithm:** Parks-McClellan (Remez Exchange)
* **Response Type:** Equiripple (Minimum Maximum Error)
* **Architecture:** Shift Register + Multiply-Accumulate (MAC)
* **Arithmetic:** 16-bit Fixed-Point
* **FPGA Board:** Xilinx Spartan-6 (XC6SLX9)
* **Clock Frequency:** 50 MHz

---

## ✨ Key Features

* ✅ Optimal equiripple filter design
* ✅ Real-time high-speed processing on FPGA
* ✅ Efficient hardware implementation (MAC-based)
* ✅ Built-in square wave generator (~3 Hz)
* ✅ Verified using Digital Storage Oscilloscope (DSO)
* ✅ Suitable for VLSI and FPGA-based DSP systems

---

## 🧠 Working Principle

The FIR filter operates using a **discrete convolution process**:

[
y[n] = \sum_{k=0}^{N-1} h[k] \cdot x[n-k]
]

* Input samples are stored in a **shift register**
* Each sample is multiplied by filter coefficients
* Results are summed using a **MAC unit**
* Output is generated every clock cycle

The Parks-McClellan algorithm ensures that coefficients are optimized for **minimum error and linear phase response**.

---

## 🛠️ Tools & Technologies

* **Verilog HDL**
* **Xilinx ISE / FPGA Toolchain**
* **Parks-McClellan Algorithm (MATLAB / Python)**
* **Digital Storage Oscilloscope (DSO)**

---

## 📂 Repository Structure

```id="q7d92k"
├── src/                # Verilog source files
│   ├── fir_filter.v
│   ├── test_gen.v
│   └── top.v
├── constraints/        # FPGA pin mapping (.ucf)
├── docs/               # Project report & design details
├── README.md
```

---

## 🔬 Implementation Details

### 🔹 Filter Design

* Coefficients generated using Parks-McClellan algorithm
* Optimized for equiripple frequency response
* Converted to fixed-point format for hardware

### 🔹 FPGA Implementation

* Shift register stores input samples
* MAC unit performs convolution
* Fully synchronous design using system clock

### 🔹 Test Signal Generation

* Internal frequency divider generates ~3 Hz square wave
* Used to visualize filtering effect clearly

---

## 📊 Hardware Results

* Square wave input is successfully smoothed
* High-frequency harmonics are significantly reduced
* Output waveform shows clean low-frequency behavior
* Verified using oscilloscope measurements

---

## 🎯 Applications

* Digital Signal Processing (DSP)
* Communication Systems
* Audio Signal Filtering
* Embedded & FPGA Systems
* VLSI Design Projects

---

## 📈 Future Scope

* Implementation on advanced FPGA platforms
* High-order filter optimization
* Power-efficient FIR architectures
* Integration with real-time DSP systems

---

## 👨‍💻 Author

**Bhaumik Soni**
ECE | VLSI | Embedded Systems | FPGA

---

## ⭐ Support

If you find this project useful, consider giving it a ⭐ on GitHub!


---
Prepared by:** Bhaumik Soni  
Mentored by:** Dr. Arpita Patel  
Institution:** CHARUSAT - Chandubhai S. Patel Institute of Technology 
