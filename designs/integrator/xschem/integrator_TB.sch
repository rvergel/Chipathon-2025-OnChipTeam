v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 -940 740 -940 {lab=RST}
N 680 -960 740 -960 {lab=Vctr}
N 680 -920 740 -920 {lab=Vref}
N 950 -940 1030 -940 {lab=OUT}
N 140 -880 140 -860 {lab=GND}
N 220 -880 220 -860 {lab=GND}
N 220 -980 220 -940 {lab=VSS}
N 140 -980 140 -940 {lab=VDD}
N 380 -880 380 -860 {lab=GND}
N 380 -980 380 -940 {lab=RST}
N 380 -1040 380 -1020 {lab=GND}
N 300 -880 300 -860 {lab=GND}
N 300 -980 300 -940 {lab=Vref}
N 380 -1140 380 -1100 {lab=Vctr}
N 840 -1050 840 -1020 {lab=VDD}
N 840 -870 840 -840 {lab=VSS}
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
.param vref = 1.3
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

meas TRAN T_period TRIG v(xINTEG.B) VAL=Vmid rise=2 TARG v(xINTEG.B) VAL=Vmid rise=3
let F_ring = 1 / T_period
print F_ring

plot v(Vctr) v(Vref)
plot v(OUT)
plot v(RST)

.endc
"}
C {lab_wire.sym} 690 -940 0 1 {name=p7 sig_type=std_logic lab=RST}
C {lab_wire.sym} 690 -960 0 1 {name=p11 sig_type=std_logic lab=Vctr}
C {lab_wire.sym} 690 -920 0 1 {name=p13 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 980 -940 0 1 {name=p6 sig_type=std_logic lab=OUT}
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
C {devices/lab_wire.sym} 380 -1120 0 0 {name=p8 sig_type=std_logic lab=Vctr}
C {devices/vsource.sym} 300 -910 0 0 {name=VR value=\{vref\}}
C {devices/gnd.sym} 300 -860 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 300 -960 0 0 {name=p10 sig_type=std_logic lab=Vref}
C {devices/vsource.sym} 380 -1070 0 0 {name=VC value="pwl 0 \{vref\} 215n \{vref\} 225n \{vctr\}"}
C {gf180/integrator/xschem/integrator.sym} 850 -920 0 0 {name=xINTEG}
C {lab_wire.sym} 840 -1050 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 840 -840 2 0 {name=p22 sig_type=std_logic lab=VSS}
