# Low-Voltage Differential Amplifier with Wide-Swing Cascode Active Load

A fully differential amplifier designed for a **1.8 V supply** in the **SkyWater 130 nm** process (sky130). It uses a **PMOS input differential pair** and an **NMOS wide-swing cascode current mirror** as the active load. The target is a minimum differential voltage gain of **40 dB** while keeping every transistor in saturation and maximizing output swing.

## Design Goals

| Parameter | Target |
|---|---|
| Supply voltage | 1.8 V |
| Differential voltage gain | ≥ 40 dB |
| Operating region | All transistors in saturation |
| Load | Wide-swing (high-compliance) cascode current mirror |
| Output swing | Maximize (trade-off with gain) |

## Architecture

- **Input stage:** PMOS differential pair (M2, M3) with PMOS tail current source (M1)
- **Active load:** NMOS current mirror (M4, M5) with NMOS cascode devices (M6, M7)
- **Bias generator:** Diode-connected NMOS (M8) fed from Vdd through a resistor (R1)

## Circuit Schematic

<p align="center">
<img width="728" height="526" alt="Screenshot 2026-10-30 132604" src="https://github.com/user-attachments/assets/cd1f30e3-40b1-436e-a6f0-a8c0ba835c1c" />
</p>

For 40 dB gain with Input Transconductance of 20µS.
<p align="center">
<img width="3072" height="1280" alt="Mini_project" src="https://github.com/user-attachments/assets/415d3bc8-9171-4401-8963-e7c929afd3ea" />

## Function of Each Block

**Tail current source (M1, PMOS)**
Sets the total tail current of the differential pair. Its gate voltage Vb controls the current.

**Differential pair (M2, M3, PMOS)**
Steers the tail current between the two branches according to the differential input. When one side gets more current, the other gets less, which converts the input voltage difference into a current difference.

**Active load mirror (M4, M5, NMOS)**
Mirrors the reference-branch current into the output branch. The two output currents move in opposite directions, so the output node sees their difference across its high output resistance. This gives the voltage gain.

**Cascode devices (M6, M7, NMOS)**
Stacked on top of the mirror devices. They isolate the mirror drain nodes from output voltage changes, which raises output resistance and keeps the mirror current stable.

**Bias generator (M8 and R1)**
M8 is diode-connected and sets the gate voltage of the NMOS mirror and cascode devices. R1 feeds M8 from Vdd, so the bias point follows Vdd through R1 instead of being fixed by an ideal source.

## Design Evolution

| Parameter | Design A (20 µS, To achieve 40 dB) | Design B (100 µS, high gain) |
|---|---|---|
| Input transconductance (gm) | 20 µS | 100 µS |
| Bias for M1 gate | Ideal source, 1.125 V | Removed, replaced by resistor-set bias |
| Tail device (M1) | 20 × 11.11 / 10 | same |
| Input pair (M2, M3) | 1 × 4.5 / 10 (W/L = 0.45) | 11 × 10 / 10 (W/L = 11) |
| Mirror (M4, M5) | 1 × 15 / 5 | same |
| Cascode (M6, M7) | 1 × 15 / 5 | same |
| Bias diode (M8) | 1 × 3.75 / 5 | same |
| Bias resistor (R1) | 80 kΩ | same |

Design B raises gm to 100 µS by resizing the input pair, and replaces the fixed Vb source with a resistor-set bias so the bias follows Vdd.

<img width="1536" height="640" alt="Mini_project" src="https://github.com/user-attachments/assets/f6ec2bc0-8f1d-4e16-95f2-4b69e683ee06" />

## Device Data ( SkyWater sky130nm pdk )

| Device | Model | Type | Size (W × nf / L) |
|---|---|---|---|
| M1 (tail) | sky130_fd_pr__pfet_01v8_lvt | PMOS, LVT | 20 × 11.11 / 10, nf = 1 |
| M2, M3 (input pair) | sky130_fd_pr__pfet_01v8_lvt | PMOS, LVT | 4.5 / 10 (Design A) |
| M4, M5 (mirror) | sky130_fd_pr__nfet_01v8 | NMOS | 15 / 5 |
| M6, M7 (cascode) | sky130_fd_pr__nfet_01v8 | NMOS | 15 / 5 |
| M8 (bias diode) | sky130_fd_pr__nfet_01v8 | NMOS | 3.75 / 5 |
| R1 | sky130_fd_pr__res_high_po | Poly resistor | 80 kΩ (Design A) |
| C1 (load) | — | Capacitor | 1 pF |

Input stimulus: sine sources at 240 mV common mode, ±3 mV amplitude, 1 kHz, 180° apart (6 mV differential).

## Simulated Results

### Transient Output

Transient output Design B

<img width="1768" height="662" alt="image" src="https://github.com/user-attachments/assets/ee7ceefb-0e87-4bcf-ba75-5ffaf8c5e65d" />

Design A, 6 mV differential input:
Output swing = 0.897917 V − 0.290625 V = **0.607 V peak-to-peak**

Transient output Design A

<img width="1920" height="1020" alt="Screenshot 2026-10-25 102447" src="https://github.com/user-attachments/assets/8f2dae64-ec08-4f37-bcee-80819c3395e2" />

### Differential Gain (AC)

Differential gain Design B

<img width="927" height="798" alt="Screenshot 2026-10-30 100006" src="https://github.com/user-attachments/assets/83b795b1-7c9c-41f0-b14c-80abf4618402" />

Differential gain Design A

<img width="1920" height="1020" alt="Screenshot 2026-10-25 101950" src="https://github.com/user-attachments/assets/a86c4538-b2cd-4bf9-944c-4f2a85aa7c9d" />

| Metric | Design A (20 µS) | Design B (100 µS) |
|---|---|---|
| Differential gain (nominal, TT) | 38.08 dB | 53.03 dB |
| −3 dB bandwidth | 51.37 kHz | 33.08 kHz |
| Unity-gain frequency | 4.11 MHz | 19.07 MHz |
| Phase margin | 77.31° | 350.3° |

### DC Transfer Characteristic

DC transfer Design B

<img width="932" height="705" alt="Screenshot 2026-10-30 100113" src="https://github.com/user-attachments/assets/b2b0217a-90d3-4850-b6fa-5ff32c467e6b" />

DC transfer Design A

<img width="1920" height="1020" alt="Screenshot 2026-10-25 102018" src="https://github.com/user-attachments/assets/bed57dd1-f174-468e-aa17-c98a53f6ad05" />

### Output Current vs. Output Voltage

Output Current vs. Output Voltage Design B

<img width="918" height="707" alt="Screenshot 2026-10-30 100135" src="https://github.com/user-attachments/assets/a77db2bc-4220-439c-802e-66976eeee762" />

Output Current vs. Output Voltage Design A
Design A: Iout reaches the 10 µA design current near 0.3 V and stays on a flat plateau to about 1.0 V.

<img width="1920" height="1020" alt="Screenshot 2026-10-25 101858" src="https://github.com/user-attachments/assets/e955e652-5d52-4feb-95b1-54662b5f584d" />


### Common-Mode and Differential Gain

Ad and Acm Design B

<img width="918" height="695" alt="Screenshot 2026-10-30 100030" src="https://github.com/user-attachments/assets/21b2495a-ad04-4d5b-9a3e-523fefeca96b" />

Ad and Acm Design A

<img width="1920" height="1020" alt="Screenshot 2026-10-25 102027" src="https://github.com/user-attachments/assets/9d2c21e8-54cb-42f9-a0cc-a5a39e3ecf7f" />

| Metric | Design A (20 µS) | Design B (100 µS) |
|---|---|---|
| Common-mode gain (nominal) | −23.22 dB | -53.08 dB |
| CMRR (nominal) | 61.31 dB | 106.8 dB |

### CMRR

 CMRR Design B

 <img width="942" height="732" alt="Screenshot 2026-10-30 100047" src="https://github.com/user-attachments/assets/e71574e4-015c-42a8-9eee-eecfe58f7230" />

 CMRR Design A

 <img width="1920" height="1020" alt="Screenshot 2026-10-25 101932" src="https://github.com/user-attachments/assets/b4fb8ec1-8997-4ed7-8c58-a750dc67ed6a" />

### Power Dissipation vs. Output Voltage
 Power Design B

 <img width="901" height="688" alt="Screenshot 2026-10-30 100155" src="https://github.com/user-attachments/assets/ff3d13b3-d89a-4088-8fb8-0a0ea16f0189" />

 Power Design A

 <img width="1920" height="1020" alt="Screenshot 2026-10-25 102214" src="https://github.com/user-attachments/assets/bb9f925f-5dc1-4d4c-9b8e-cd402296bfaf" />

| Metric | Design A (20 µS) | Design B (100 µS) |
|---|---|---|
| Power (nominal, Vout = 0.697 V) | 56.4 µW | 175.8 µW |

## Operating Points

### Design A (20 µS)

| Device | Type | Id | Vgs | Vth | Vds | Vdsat | gm | gds | Region |
|---|---|---|---|---|---|---|---|---|---|
| M1 (tail) | PMOS | 20 µA | 675.0 mV | 459.5 mV | 187.5 mV | 180.9 mV | 167.3 µS | 21.18 µS | Edge of saturation |
| M2 | PMOS | 10 µA | 1372.5 mV | 501.5 mV | 914.9 mV | 691.5 mV | 26.39 µS | 0.301 µS | Saturated |
| M3 | PMOS | 10 µA | 1372.5 mV | 501.5 mV | 914.9 mV | 691.5 mV | 26.39 µS | 0.301 µS | Saturated |
| M4 | NMOS | 10 µA | 731.1 mV | 571.4 mV | 532.3 mV | 155.2 mV | 116.8 µS | 0.382 µS | Saturated |
| M5 | NMOS | 10 µA | 731.1 mV | 571.4 mV | 532.3 mV | 155.2 mV | 116.8 µS | 0.382 µS | Saturated |
| M6 | NMOS | 10 µA | 697.5 mV | 529.2 mV | 165.2 mV | 156.7 mV | 107.6 µS | 11.06 µS | Edge of saturation |
| M7 | NMOS | 10 µA | 697.5 mV | 529.2 mV | 165.2 mV | 156.7 mV | 107.6 µS | 11.06 µS | Edge of saturation |
| M8 | NMOS | 11.3 µA | 896.3 mV | 534.7 mV | 896.3 mV | 306.1 mV | 59.79 µS | 0.242 µS | Saturated |

### Design B (100 µS)

| Device | Type | Id | Vgs | Vth | Vds | Vdsat | gm | gds | Region |
|---|---|---|---|---|---|---|---|---|---|
| M1 (tail) | PMOS | 19.72 µA | 0.6667 V | 0.4590 V | 0.4845 V | 0.1756 V | 179.0 µS | 0.482 µS | Saturation |
| M2 | PMOS | 9.858 µA | 0.7655 V | 0.5893 V | 0.6197 V | 0.1693 V | 98.98 µS | 0.195 µS | Saturation |
| M3 | PMOS | 9.858 µA | 0.7655 V | 0.5893 V | 0.6197 V | 0.1693 V | 98.98 µS | 0.195 µS | Saturation |
| M4 | NMOS | 9.858 µA | 0.7299 V | 0.5717 V | 0.5295 V | 0.1541 V | 115.7 µS | 0.378 µS | Saturation |
| M5 | NMOS | 9.858 µA | 0.7299 V | 0.5717 V | 0.5295 V | 0.1541 V | 115.7 µS | 0.378 µS | Saturation |
| M6 | NMOS | 9.858 µA | 0.6959 V | 0.5292 V | 0.1664 V | 0.1554 V | 107.1 µS | 10.28 µS | Saturation (near edge) |
| M7 | NMOS | 9.858 µA | 0.6959 V | 0.5292 V | 0.1664 V | 0.1554 V | 107.1 µS | 10.28 µS | Saturation (near edge) |
| M8 | NMOS | 11.30 µA | 0.8963 V | 0.5347 V | 0.8963 V | 0.3061 V | 59.79 µS | 0.242 µS | Saturation (diode-connected) |

Supply current: 97.7 µA. Power dissipation (nominal, 27 °C): 175.8 µW.

## Process, Voltage and Temperature Corners

### Process Corners, Design A

| Corner | Diff. gain | CM gain | CMRR | −3 dB BW | UGF | Vout swing | Phase margin |
|---|---|---|---|---|---|---|---|
| TT | 38.08 dB | −23.22 dB | 61.31 dB | 51.37 kHz | 4.1 MHz | 0.607 V | 77.31° |
| FF | 31.10 dB | −12.00 dB | 43.19 dB | 137.8 kHz | 4.9 MHz | 0.481 V | 73.69° |
| SS | 46.83 dB | −53.67 dB | 100.5 dB | 10.95 kHz | 2.4 MHz | 0.770 V | 79.28° |
| FS | 25.00 dB | −10.13 dB | 35.13 dB | 276.4 kHz | 4.7 MHz | 0.278 V | 74.66° |
| SF | 51.44 dB | −56.04 dB | 107.4 dB | 4.70 kHz | 1.7 MHz | 0.840 V | 78.93° |

### Process Corners, Design B  is not added here.

### Supply and Temperature, Design A

| Condition | Diff. gain | CMRR | Power | Vout | Swing | Remarks |
|---|---|---|---|---|---|---|
| VDD −10% | 47.5 dB | 103.9 dB | 21.3 µW | 0.562 V | 0.719 V | All in deep saturation |
| VDD −5% | 43.0 dB | 95.2 dB | 33.6 µW | 0.630 V | 0.679 V | All in deep saturation |
| VDD (nominal) | 38.0 dB | 61.3 dB | 56.4 µW | 0.697 V | 0.60 V | All in saturation |
| VDD +5% | 34.4 dB | 47.0 dB | 75.5 µW | 0.744 V | 0.547 V | M1, M6, M7 in triode |
| VDD +10% | 31.7 dB | 41.4 dB | 91.1 µW | 0.782 V | 0.485 V | M1, M6, M7 in triode |
| −40 °C | 49.1 dB | 105.7 dB | 31 µW | 0.650 V | 0.85 V | All in deep saturation |
| 0 °C | 42.9 dB | 88.3 dB | 45.6 µW | 0.678 V | 0.71 V | All in deep saturation |
| 27 °C | 38.0 dB | 61.3 dB | 56.4 µW | 0.697 V | 0.60 V | All in saturation |
| 85 °C | 30.3 dB | 43.1 dB | 64.4 µW | 0.703 V | 0.424 V | M1, M6, M7 in triode |
| 125 °C | 25.6 dB | 37.1 dB | 66.0 µW | 0.700 V | 0.272 V | M1, M6, M7 in triode |

### Supply and Temperature for Design B is not added here.


## Key Takeaways

- **Gain:** Design A reaches 38.08 dB at nominal, about 2 dB below the 40 dB target. It meets 40 dB at the SS and SF corners.
- **Swing:** The 0.607 V swing is measured with a 6 mV differential input. It is below the 1 V hand estimate. The gap is traced to the input-pair overdrive.
- **Mirror tracking:** The M4/M5 reference and output currents match across the operating range.
- **Trade-off:** Maximizing swing needs small Vov on every device, which pushes devices toward the edge of saturation. Higher gain needs higher gm at fixed current, which needs larger Vov. Design B raises gm to 100 µS for more gain.
- **Bias:** The resistor-set bias in Design B is intended to follow Vdd and temperature. Confirm this with the corner results before relying on it.

## Future Work

- Evaluate a folded-cascode load for more output swing at low supply.
- Add noise, offset and slew-rate analysis
  
## References

- Behzad Razavi, *Design of Analog CMOS Integrated Circuits*, 2nd Edition.
- David Johns and Ken Martin, *Analog Integrated Circuit Design*, University of Toronto.
- Phillip E. Allen and Douglas R. Holberg, *CMOS Analog Circuit Design*, 2nd Edition.


