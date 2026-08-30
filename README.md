# Week 2 — Combinational Circuit Design

## Overview
This repository will contain my Week 2 work on combinational circuit design, including Mux, Decoder, Encoder, Comparator, and Adder circuits designed and verified using Verilog HDL.

## What I will Learn
- Multiplexer design (2:1, 4:1, 8:1, 16:1)
- Decoder design (2-to-4, 3-to-8, 4-to-16)
- Encoder and Priority Encoder design
- Magnitude Comparator design
- Adder design (Half, Full, RCA, CLA)
- Verilog modeling styles: Structural, Dataflow, Behavioral
- Self-checking testbench design

## Circuit Summary

| Circuit | Inputs | Outputs | Modeling Style |
|---------|--------|---------|----------------|
| 2:1 Mux | 3 | 1 | Dataflow, Behavioral |
| 4:1 Mux | 6 | 1 | Structural |
| 8:1 Mux | 11 | 1 | Behavioral |
| 16:1 Mux | 21 | 1 | Hierarchical |
| 2-to-4 Decoder | 3 | 4 | Behavioral |
| 3-to-8 Decoder | 3 | 8 | Hierarchical |
| 4-to-16 Decoder | 4 | 16 | Hierarchical |
| 4-to-2 Encoder | 4 | 2 | Behavioral |
| 8-to-3 Encoder | 8 | 3 | Behavioral |
| 4-to-2 Priority Encoder | 4 | 2 | Behavioral |
| 1-bit Comparator | 2 | 3 | Gate-level |
| 4-bit Comparator | 8 | 3 | Structural |
| Half Adder | 2 | 2 | Gate-level |
| Full Adder | 3 | 2 | Structural |
| 4-bit RCA | 9 | 5 | Structural |
| 4-bit CLA | 9 | 5 | Behavioral |

## Delay Analysis

| Adder Type | Gate Delays (Worst Case) | Speedup |
|------------|-------------------------|---------|
| 4-bit RCA | 8 gate delays | 1x |
| 4-bit CLA | 4 gate delays | 2x |

## Deliverables
- [x] 4 Mux designs with testbenches
- [x] 3 Decoder designs with testbenches
- [x] 4 Encoder designs with testbenches
- [x] 3 Comparator designs with testbenches
- [x] 4 Adder designs with testbenches
- [x] Delay analysis (RCA vs CLA)
- [x] HDLBits practice (Multiplexers, Decoders, Adders)

## Resources 
- *Digital Design and Computer Architecture* — Harris & Harris, Chapters 2–3
- *Verilog HDL: A Guide to Digital Design and Synthesis* — Palnitkar, Chapters 3–5
- Neso Academy YouTube channel
- HDLBits (https://hdlbits.01xz.net/)
- EDA Playground (https://www.edaplayground.com/)

## Time to Invest
- Total: 28 hours
- Theory: 10 hours
- Verilog Coding: 14 hours
- Documentation: 4 hours

## Author
**Anuraag** | 3rd Year B.Tech ECE | DV Roadmap — Week 2/72
