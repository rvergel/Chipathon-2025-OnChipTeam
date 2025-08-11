v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1010 -390 1010 -330 {lab=#net1}
N 1050 -410 1050 -330 {lab=#net2}
N 1090 -430 1090 -330 {lab=#net3}
N 1130 -450 1130 -330 {lab=#net4}
N 930 -300 970 -300 {lab=VDD}
N 930 -260 970 -260 {lab=VSS}
N 640 -130 640 -90 {lab=VSS}
N 640 -320 640 -280 {lab=V_rext}
N 820 -450 950 -450 {lab=#net4}
N 1010 -450 1130 -450 {lab=#net4}
N 910 -430 1090 -430 {lab=#net3}
N 820 -430 850 -430 {lab=#net3}
N 820 -410 980 -410 {lab=#net2}
N 1040 -410 1050 -410 {lab=#net2}
N 920 -390 1010 -390 {lab=#net1}
N 820 -390 860 -390 {lab=#net1}
N 820 -470 840 -470 {lab=Vrefp}
N 820 -370 840 -370 {lab=Vrefn}
N 640 -280 640 -270 {lab=V_rext}
N 640 -210 640 -190 {lab=V_rext}
N 840 -490 840 -470 {lab=Vrefp}
N 840 -370 840 -350 {lab=Vrefn}
N 120 -140 120 -100 {
lab=GND}
N 200 -140 200 -100 {
lab=GND}
N 300 -140 300 -100 {
lab=GND}
N 200 -210 200 -200 {lab=#net5}
N 200 -290 200 -270 {lab=VDD}
N 120 -230 120 -200 {lab=VSS}
N 300 -230 300 -200 {lab=Vref}
N 470 -480 520 -480 {lab=Vref}
N 640 -560 640 -520 {lab=VDD}
N 670 -320 670 -280 {lab=VSS}
N 860 -390 920 -390 {lab=#net1}
N 850 -430 910 -430 {lab=#net3}
N 950 -450 1010 -450 {lab=#net4}
N 980 -410 1040 -410 {lab=#net2}
N 640 -270 640 -210 {lab=V_rext}
C {code.sym} 150 -520 0 0 {name=OP only_toplevel=true value="
.control
save all

*OP simulation
op

*TOP

let Iref_1n = @m.x1.x2.xm7.m0[id]
let Iref_50n = @m.x1.x2.xm8.m0[id]
let Iref_1p = @m.x1.x2.xm3.m0[id]
let Iref_50p = @m.x1.x2.xm4.m0[id]
let Iqscnt= i(vdd_i) - (Iref_1n + Iref_50n + Iref_1p + Iref_50p)
*let Rext = v(V_rext)/i(rext_i)

echo $&Iref_1n $&Iref_50n $&Iref_1p $&Iref_50p $&Iqscnt > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {res.sym} 640 -160 0 0 {name=R1
value="600k tc1=200e-6"
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 640 -90 2 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -300 2 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 930 -260 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 -490 0 1 {name=p2 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 840 -350 0 1 {name=p3 sig_type=std_logic lab=Vrefn}
C {lab_pin.sym} 640 -290 2 1 {name=p4 sig_type=std_logic lab=V_rext}
C {devices/code_shown.sym} 10 -860 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
.lib CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/sm141064.ngspice CACE\{corner\}

.include CACE\{PDK_ROOT\}/CACE\{PDK\}/libs.tech/ngspice/design.ngspice
.include CACE\{DUT_path\}

.temp CACE\{temperature\}

.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

* Flag unsafe operating conditions (exceeds models' specified limits)
.option warn=1
"}
C {devices/vsource.sym} 120 -170 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 120 -100 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 200 -170 0 0 {name=V3 value=CACE\{VDD\} savecurrent=false}
C {devices/gnd.sym} 200 -100 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 300 -170 0 0 {name=V5 value=CACE\{Vref\} savecurrent=false}
C {devices/gnd.sym} 300 -100 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 300 -230 2 1 {name=p5 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 200 -290 2 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 120 -230 2 1 {name=p7 sig_type=std_logic lab=VSS}
C {ammeter.sym} 200 -240 2 0 {name=vdd_i savecurrent=true spice_ignore=0}
C {lab_pin.sym} 470 -480 2 1 {name=p1 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 640 -560 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 670 -280 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {xschem/current_reference_generator.sym} 670 -420 0 0 {name=x1}
C {/foss/designs/chipathon_2025/designs/gf180/current_reference_load/xschem/current_reference_load.sym} 1070 -280 0 0 {name=x2}
