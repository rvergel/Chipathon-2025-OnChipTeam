v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {This is a 10-stage shift register that controls
10 transmission gates between the pin and each BUS.

The transmission gates are empty cells but
with the correct interface.} 25 -90 0 0 0.2 0.2 {}
N -80 20 0 20 {lab=PHI_1}
N -80 40 0 40 {lab=PHI_2}
N -80 0 0 0 {lab=D_in}
N 300 0 410 0 {lab=Q[1:9],D_out}
N 286.25 118.75 413.75 118.75 {lab=pin}
N 286.25 98.75 413.75 98.75 {lab=BUS[1:10]}
N -93.75 98.75 -13.75 98.75 {lab=Q[1:9],D_out}
C {Chipathon-2025-OnChipTeam/designs/switch_matrix/ShiftReg_row_10_2/ShiftReg_row_10_2.sym} 150 20 0 0 {name=xSR}
C {ipin.sym} -80 40 0 0 {name=p2 lab=PHI_2
}
C {ipin.sym} -80 20 0 0 {name=p3 lab=PHI_1
}
C {lab_wire.sym} 312.5 0 0 1 {name=p4 sig_type=std_logic lab=Q[1:9],D_out}
C {ipin.sym} -80 0 0 0 {name=p7 lab=D_in}
C {opin.sym} 421.25 0 0 0 {name=p8 lab=D_out}
C {title.sym} -62.5 232.5 0 0 {name=l2 author="Peter Kinget"}
C {iopin.sym} 413.75 118.75 0 0 {name=p1 lab=pin}
C {lab_wire.sym} -33.75 98.75 0 0 {name=p5 sig_type=std_logic lab=Q[1:9],D_out}
C {iopin.sym} 413.75 98.75 0 0 {name=p6 lab=BUS[1:10]}
C {Chipathon-2025-OnChipTeam/designs/switch_matrix/swmatrix_Tgate/swmatrix_Tgate.sym} 136.25 108.75 0 0 {name=x1}
