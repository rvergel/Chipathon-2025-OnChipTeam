v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 840 -740 900 -740 {lab=Vx}
N 840 -720 900 -720 {lab=INT_RST}
N 840 -700 900 -700 {lab=Vref}
N 1000 -830 1000 -800 {lab=VDD}
N 140 -880 140 -860 {lab=GND}
N 220 -880 220 -860 {lab=GND}
N 220 -980 220 -940 {lab=VSS}
N 140 -980 140 -940 {lab=VDD}
N 380 -880 380 -860 {lab=GND}
N 380 -980 380 -940 {lab=RST}
N 380 -1040 380 -1020 {lab=GND}
N 300 -880 300 -860 {lab=GND}
N 300 -980 300 -940 {lab=Vref}
N 380 -1140 380 -1100 {lab=IN}
N 1000 -650 1000 -620 {lab=VSS}
N 680 -900 740 -900 {lab=IN}
N 1200 -900 1260 -900 {lab=MEM}
N 1320 -1010 1320 -980 {lab=VDD}
N 1340 -870 1340 -840 {lab=VSS}
N 1220 -940 1260 -940 {lab=Vth}
N 1220 -1000 1220 -940 {lab=Vth}
N 140 -1040 140 -1020 {lab=GND}
N 140 -1140 140 -1100 {lab=Vth}
N 1350 -1010 1350 -980 {lab=IBIAS}
N 260 -1040 260 -1000 {lab=IBIAS}
N 260 -1140 260 -1100 {lab=VDD}
N 1430 -920 1510 -920 {lab=COMP}
N 1790 -1040 1790 -1010 {lab=VDD}
N 1790 -830 1790 -800 {lab=VSS}
N 1850 -920 1930 -920 {lab=SPIKE}
N 1430 -610 1510 -610 {lab=COMPB}
N 1570 -1020 1570 -990 {lab=VDD}
N 1570 -850 1570 -820 {lab=VSS}
N 1650 -920 1730 -920 {lab=COMPB}
N 1430 -570 1510 -570 {lab=RST}
N 1570 -700 1570 -670 {lab=VDD}
N 1570 -510 1570 -480 {lab=VSS}
N 1690 -590 1770 -590 {lab=INT_RST}
N 840 -900 840 -740 {lab=Vx}
N 800 -900 880 -900 {lab=Vx}
N 940 -900 1200 -900 {lab=MEM}
N 1200 -900 1200 -720 {lab=MEM}
N 1110 -720 1200 -720 {lab=MEM}
C {devices/code_shown.sym} 110 -605 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical

"}
C {code.sym} 172.5 -777.5 0 0 {name=CODE only_toplevel=false 
value="

.param VDD = 1.8
.param VSS = 0
.param vctr = 1.8
.param vref = 1.44
.param vthcomp = 1.2
.param cap = 15f

.param wxor=5.6u

.save all

.control

*----------------------------- Parámetros generales
let Vhigh = 1.8
let Vmid = Vhigh * 0.5

tran 0.1n 1u
meas tran IDD_AVG AVG i(VSP) from=20n to=1u
let PAVG = abs(IDD_AVG*Vhigh)
print PAVG

meas TRAN T_period TRIG v(B) VAL=Vmid rise=2 TARG v(B) VAL=Vmid rise=3
let F_ring = 1 / T_period
print F_ring

meas TRAN T_spk TRIG v(SPIKE) VAL=Vmid rise=2 TARG v(SPIKE) VAL=Vmid rise=3
let F_spk = 1 / T_spk
print F_spk

plot v(IN) v(Vref)
plot v(MEM) v(Vx)
plot v(COMP) v(COMPB)
plot v(RST) v(INT_RST)
plot v(SPIKE)

.endc
"}
C {lab_wire.sym} 850 -720 0 1 {name=p9 sig_type=std_logic lab=INT_RST}
C {lab_wire.sym} 850 -740 0 1 {name=p11 sig_type=std_logic lab=Vx}
C {lab_wire.sym} 850 -700 0 1 {name=p13 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1000 -830 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1140 -720 0 1 {name=p6 sig_type=std_logic lab=MEM}
C {devices/vsource.sym} 380 -910 0 0 {name=VRESET value="pwl 0 \{VDD\} 10n \{VDD\} 20n 0"}
C {lab_wire.sym} 380 -960 0 1 {name=p12 sig_type=std_logic lab=RST}
C {gnd.sym} 380 -860 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 140 -910 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} 140 -860 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} 140 -960 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 220 -910 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} 220 -860 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 220 -960 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/gnd.sym} 380 -1020 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 380 -1120 0 0 {name=p8 sig_type=std_logic lab=IN}
C {devices/vsource.sym} 300 -910 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 300 -860 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 300 -960 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1000 -620 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 380 -1070 0 0 {name=VC value="pwl 0 \{vref\} 215n \{vref\} 225n \{vctr\}"}
C {res_ac.sym} 770 -900 3 0 {name=RIN
value=100k
ac=1k
m=1}
C {res_ac.sym} 910 -900 3 0 {name=RFB
value=100k
ac=1k
m=1}
C {lab_wire.sym} 690 -900 0 1 {name=p22 sig_type=std_logic lab=IN}
C {designs/static_comparator/xschem/static_comparator.sym} 1040 -870 0 0 {name=xCOMP}
C {lab_wire.sym} 1320 -1010 2 1 {name=p25 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1340 -840 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1220 -1000 0 1 {name=p27 sig_type=std_logic lab=Vth}
C {devices/vsource.sym} 140 -1070 0 0 {name=VTH1 value=\{vthcomp\}}
C {devices/gnd.sym} 140 -1020 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 140 -1120 0 0 {name=p28 sig_type=std_logic lab=Vth}
C {lab_wire.sym} 1450 -920 0 1 {name=p29 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 1350 -1010 2 0 {name=p30 sig_type=std_logic lab=IBIAS}
C {isource.sym} 260 -1070 0 0 {name=I0 value=400n}
C {lab_wire.sym} 260 -1000 1 0 {name=p31 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} 260 -1120 2 0 {name=p32 sig_type=std_logic lab=VDD}
C {designs/edge_detector/xschem/edge_detector_TOP.sym} 1790 -920 0 0 {name=xEDGE}
C {lab_wire.sym} 1790 -1040 3 1 {name=p33 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1790 -800 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1870 -920 0 1 {name=p35 sig_type=std_logic lab=SPIKE}
C {lab_wire.sym} 1490 -610 0 0 {name=p39 sig_type=std_logic lab=COMPB}
C {designs/gate_buf_x1/gate_buf_x1.sym} 1570 -920 0 0 {name=xBUFF}
C {lab_wire.sym} 1570 -1020 3 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1570 -820 3 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1670 -920 0 1 {name=p41 sig_type=std_logic lab=COMPB}
C {designs/gate_or/xschem/gate_or.sym} 1590 -590 0 0 {name=xORST}
C {lab_wire.sym} 1570 -700 3 1 {name=p42 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1570 -480 3 0 {name=p43 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1490 -570 0 0 {name=p44 sig_type=std_logic lab=RST}
C {lab_wire.sym} 1760 -590 0 0 {name=p45 sig_type=std_logic lab=INT_RST}
C {designs/integrator/xschem/integrator.sym} 1010 -700 0 0 {name=x1}
