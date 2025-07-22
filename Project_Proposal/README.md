# OnChip-Team proposal / Readme

This project proposes the integration of a modular spiking neuron for implementation in MOSbius, targeting the 2025 Chipathon. The proposed architecture comprises a low-pass filter realized via a time-domain integrator based on a ring-oscillator VCO, in addition to a comparator and an output spike generation circuit. Each constituent block will be developed as a separate module within the MOSbius chip, enabling users to configure and evaluate them independently or integrate them into a complete spiking neuron for the construction of simple neural networks.

