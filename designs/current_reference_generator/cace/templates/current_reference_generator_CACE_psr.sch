v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1310 -150 1350 -150 {lab=VDD}
N 1310 -110 1350 -110 {lab=VSS}
N 1000 -70 1000 -30 {lab=VSS}
N 1000 -140 1000 -130 {lab=Vout}
N 880 -320 940 -320 {lab=#net1}
N 880 -320 880 -290 {lab=#net1}
N 810 -290 880 -290 {lab=#net1}
N 920 -350 940 -350 {lab=Vrefp}
N 1030 -200 1030 -150 {lab=VSS}
N 1000 -200 1000 -140 {lab=Vout}
N 920 -420 920 -350 {lab=Vrefp}
N 1000 -440 1000 -400 {lab=VDD}
N 1180 -270 1390 -270 {lab=#net2}
N 1390 -270 1390 -180 {lab=#net2}
N 1180 -290 1430 -290 {lab=#net3}
N 1430 -290 1430 -180 {lab=#net3}
N 1180 -310 1470 -310 {lab=#net4}
N 1470 -310 1470 -180 {lab=#net4}
N 1180 -330 1510 -330 {lab=#net5}
N 1510 -330 1510 -180 {lab=#net5}
N 800 -140 1000 -140 {lab=Vout}
N 660 -330 700 -330 {
lab=Vout}
N 520 -380 700 -380 {
lab=Vref}
N 1180 -250 1190 -250 {lab=#net6}
N 880 -350 920 -350 {lab=Vrefp}
N 230 -230 230 -190 {
lab=GND}
N 320 -230 320 -190 {
lab=GND}
N 410 -230 410 -190 {
lab=GND}
N 320 -300 320 -290 {lab=#net7}
N 320 -320 320 -300 {lab=#net7}
N 230 -320 230 -290 {lab=VSS}
N 410 -320 410 -290 {lab=Vref}
N 660 -330 660 -140 {lab=Vout}
N 660 -140 800 -140 {lab=Vout}
N 320 -410 320 -380 {lab=VDD}
C {lab_pin.sym} 1000 -30 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1310 -150 2 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1310 -110 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 770 -270 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 770 -250 2 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 770 -230 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 520 -380 2 1 {name=p4 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 1030 -150 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 920 -420 0 1 {name=p17 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 1000 -440 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1000 -170 2 1 {name=p16 sig_type=std_logic lab=Vout}
C {res.sym} 1000 -100 0 0 {name=R2
value="600k tc1=200e-6"
footprint=1206
device=resistor
m=1}
C {code.sym} 70 -300 0 0 {name=PSR only_toplevel=true value="
.save all
.save @m.x2.xm7.m0[id]
.save @m.x2.xm8.m0[id]
.save @m.x2.xm3.m0[id]
.save @m.x2.xm4.m0[id]
.control

*AC simulation
ac dec 10 1 10e9

let Iref_1n = db(@m.x2.xm7.m0[id])
let Iref_50n = db(@m.x2.xm8.m0[id])
let Iref_1p = db(@m.x2.xm3.m0[id])
let Iref_50p = db(@m.x2.xm4.m0[id])

meas ac psr_1n find Iref_1n at=10
meas ac psr_50n find Iref_50n at=10
meas ac psr_1p find Iref_1p at=10
meas ac psr_50p find Iref_50p at=10

set wr_singlescale
*set wr_vecnames
echo $&psr_1n $&psr_50n $&psr_1p $&psr_50p > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"


    

    }
C {noconn.sym} 1190 -250 2 0 {name=l1}
C {devices/vsource.sym} 230 -260 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} 230 -190 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 320 -260 0 0 {name=V6 value=CACE\{VDD\} savecurrent=false}
C {devices/gnd.sym} 320 -190 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 410 -260 0 0 {name=V7 value=CACE\{Vref\} savecurrent=false}
C {devices/gnd.sym} 410 -190 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 410 -320 2 1 {name=p19 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 320 -410 2 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -320 2 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 60 -660 0 0 {name=SETUP
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
C {/foss/designs/chipathon_2025/designs/gf180/error_amplifier_N_input/xschem/error_amplifier_N_input.sym} 790 -350 0 0 {name=x1}
C {/foss/designs/chipathon_2025/designs/gf180/current_reference_second_stage/xschem/current_reference_second_stage.sym} 1050 -290 0 0 {name=x2}
C {/foss/designs/chipathon_2025/designs/gf180/current_reference_load/xschem/current_reference_load.sym} 1450 -130 0 0 {name=x3}
C {vsource.sym} 320 -350 0 0 {name=V5 value="AC 1" savecurrent=false}
