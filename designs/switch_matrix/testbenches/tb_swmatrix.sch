v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 467.5 90 1643.75 1235 {flags=graph
y1=0
ypos1=-1.08
ypos2=1.62
divy=5
subdivy=1
unity=1
x1=0
x2=6e-06
divx=5
subdivx=1
ylabmag=0.5
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=2.5
rainbow=0
autoload=1
digital=1
sim_type=tran
rawfile=$netlist_dir/tb_swmatrix.raw
hilight_wave=22
xlabmag=0.5
mode=Line
y2=2.7
legend=0
color="4 5 6 7 4"
node="phi_2
phi_1
data
clock_in
xswmatrix.xswmatrix_row[48].q[9]"}
T {Testing a Switch Matrix with 5 by 10 registers
- 5 pins (rows) and 10 buses (columns) [can be expanded later]
- clock and data read from a file (see code block)
- for the clock and data interfaces, Schmitt Triggers need to be added
- typically we drive in a leading 0 followed by the 50 data bits
- the leading 0 makes sure all registers are first set to 0
- the last data bit appears at xsr.q[1] and the first at the 50th register which is D_out
- there is a python script in the data_source folder to generate source and clock txt files
- the transmission gates are empty cells for now} -725 842.5 0 0 0.4 0.4 {}
T {The buffers on the PHI_1 and PHI_2 will need further optimizing,
esp. if the matrix is increased in size; these are global signals
with no internal buffering in the current (simple) implementation

The data_in does not need buffers but they have been inserted to
approx. match the delay (out of an abundance of caution)} 547.5 -360 0 0 0.3 0.3 {}
T {Cell is not correctly named right now, it is implementing a 5 by 10} 977.5 -85 0 0 0.3 0.3 {}
N -217.5 42.5 -217.5 72.5 {lab=GND}
N -217.5 -67.5 -217.5 -17.5 {lab=VSSd}
N -217.5 -185 -217.5 -125 {lab=VDDd}
N 271.25 -145 271.25 -141.25 {lab=clock_in}
N 1305.625 -165.625 1305.625 -165 {lab=D_out}
N -85 -182.5 5 -182.5 {lab=data}
N 75 -182.5 145 -182.5 {lab=datab}
N -85 -110 5 -110 {lab=clock}
N 75 -110 145 -110 {lab=clockb}
N 225 -145 225 -110 {lab=clock_in}
N 225 -145 271.25 -145 {lab=clock_in}
N 1305.625 -145.625 1305.625 -145 {lab=BUS[1:10]}
N 1255 -165 1305.625 -165 {lab=D_out}
N 1305.625 -145 1407.5 -145 {lab=BUS[1:10]}
N 1255 -145 1305.625 -145 {lab=BUS[1:10]}
N 1305.625 -125 1407.5 -125 {lab=PIN[1:57]}
N 1305.625 -165 1407.5 -165 {lab=D_out}
N 955 -125 955 -110 {lab=PHI_2}
N 571.25 -125 597.5 -125 {lab=#net1}
N 597.5 -125 597.5 -110 {lab=#net1}
N 571.25 -145 597.5 -145 {lab=#net2}
N 597.5 -160 597.5 -145 {lab=#net2}
N 882.5 -217.5 915 -217.5 {lab=data_in}
N 915 -217.5 915 -165 {lab=data_in}
N 915 -165 955 -165 {lab=data_in}
N 225 -182.5 597.5 -182.5 {lab=#net3}
N 597.5 -217.5 597.5 -182.5 {lab=#net3}
N 597.5 -217.5 700 -217.5 {lab=#net3}
N 832.5 -217.5 882.5 -217.5 {lab=data_in}
N 700 -217.5 748.75 -217.5 {lab=#net3}
N 750 -110 760 -110 {lab=#net4}
N 820 -110 830 -110 {lab=PHI_2}
N 750 -160 760 -160 {lab=#net5}
N 597.5 -110 660 -110 {lab=#net1}
N 720 -110 750 -110 {lab=#net4}
N 720 -160 750 -160 {lab=#net5}
N 597.5 -160 660 -160 {lab=#net2}
N 830 -110 846.25 -110 {lab=PHI_2}
N 900 -145 955 -145 {lab=PHI_1}
N 930 -110 955 -110 {lab=PHI_2}
N 846.25 -110 930 -110 {lab=PHI_2}
N 840 -145 900 -145 {lab=PHI_1}
N 840 -160 840 -145 {lab=PHI_1}
N 1255 -125 1306.25 -125 {lab=PIN[1:57]}
N 820 -160 840 -160 {lab=PHI_1}
C {devices/vsource.sym} -217.5 12.5 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} -217.5 72.5 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -217.5 -96.25 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {devices/lab_wire.sym} -217.5 -37.5 0 0 {name=p2 sig_type=std_logic lab=VSSd}
C {devices/lab_wire.sym} -217.5 -157.5 0 0 {name=p3 sig_type=std_logic lab=VDDd}
C {devices/code_shown.sym} -765 541.25 0 0 {name=Simulation only_toplevel=false value="
.control

    save V(data) V(PHI_1) V(PHI_2) V(clock_in) V(xswmatrix.xswmatrix_row[57].q[9])
    TRAN 1n 6000n
    write tb_swmatrix.raw

.endc
"}
C {devices/code_shown.sym} -757.5 122.5 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {launcher.sym} 540 40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_swmatrix.raw tran"
}
C {title.sym} -630 1150 0 0 {name=l2 author="Peter Kinget"}
C {lab_wire.sym} 945 -145 0 0 {name=p6 sig_type=std_logic lab=PHI_1}
C {lab_wire.sym} 940 -110 0 0 {name=p17 sig_type=std_logic lab=PHI_2}
C {Chipathon-2025-OnChipTeam/designs/switch_matrix/NO_ClkGen/NO_ClkGen.sym} 421.25 -135 0 0 {name=xNO_ClkGen}
C {lab_wire.sym} 1311.25 -165 0 1 {name=p20 sig_type=std_logic lab=D_out}
C {lab_wire.sym} -35 -182.5 0 0 {name=p22 sig_type=std_logic lab=data
}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} 35 -182.5 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 132.5 -182.5 0 0 {name=p23 sig_type=std_logic lab=datab

}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} 185 -182.5 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} -35 -110 0 0 {name=p1 sig_type=std_logic lab=clock}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} 35 -110 0 0 {name=x4 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 132.5 -110 0 0 {name=p4 sig_type=std_logic lab=clockb

}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_2.sym} 185 -110 0 0 {name=x5 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 947.5 -165 0 0 {name=p5 sig_type=std_logic lab=data_in}
C {lab_wire.sym} 250 -145 0 0 {name=p7 sig_type=std_logic lab=clock_in}
C {Chipathon-2025-OnChipTeam/designs/switch_matrix/swmatrix_57_by_10/swmatrix_57_by_10.sym} 1105 -145 0 0 {name=xSWMATRIX}
C {lab_wire.sym} 1311.25 -145 0 1 {name=p8 sig_type=std_logic lab=BUS[1:10]}
C {lab_wire.sym} 1311.25 -125 0 1 {name=p9 sig_type=std_logic lab=PIN[1:57]}
C {noconn.sym} 1407.5 -165 0 1 {name=l3}
C {noconn.sym} 1407.5 -145 0 1 {name=l4}
C {noconn.sym} 1407.5 -125 0 1 {name=l5}
C {netlist.sym} -757.5 237.5 0 0 {name=s1 value="
.param VDD = 1.8

.global VDDd VSSd

* clock
abit [ bit_node ]  input_vector
.model input_vector d_source(input_file=\\"/foss/designs/Chipathon-2025-OnChipTeam/designs/switch_matrix/testbenches/data_source/data_570.txt\\")
* data
aclock [ clock_node ] clock_vector
.model clock_vector d_source(input_file=\\"/foss/designs/Chipathon-2025-OnChipTeam/designs/switch_matrix/testbenches/data_source/data_570_clk.txt\\")
* convert digital signals to analog
aconvert [ bit_node clock_node ] [ data clock ] dac_in
.model dac_in dac_bridge (out_low=0V out_high=1.8V t_rise=0.2ns t_fall=0.2ns)
"}
C {libs/buffer4_8.sym} 768.75 -187.5 0 0 {name=x7}
C {libs/buffer.sym} 780 -150 0 0 {name=x2}
C {libs/buffer.sym} 780 -100 0 0 {name=x6}
C {libs/buffer.sym} 680 -150 0 0 {name=x8}
C {libs/buffer.sym} 680 -100 0 0 {name=x9}
