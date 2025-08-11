v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1290 -340 1330 -340 {lab=VDD}
N 1290 -300 1330 -300 {lab=VSS}
N 980 -260 980 -220 {lab=VSS}
N 980 -330 980 -320 {lab=Vout}
N 860 -510 920 -510 {lab=#net1}
N 860 -510 860 -480 {lab=#net1}
N 790 -480 860 -480 {lab=#net1}
N 900 -540 920 -540 {lab=Vrefp}
N 1010 -390 1010 -340 {lab=VSS}
N 980 -390 980 -330 {lab=Vout}
N 900 -610 900 -540 {lab=Vrefp}
N 980 -630 980 -590 {lab=VDD}
N 1160 -460 1370 -460 {lab=#net2}
N 1370 -460 1370 -370 {lab=#net2}
N 1160 -480 1410 -480 {lab=#net3}
N 1410 -480 1410 -370 {lab=#net3}
N 1160 -500 1450 -500 {lab=#net4}
N 1450 -500 1450 -370 {lab=#net4}
N 1160 -520 1490 -520 {lab=#net5}
N 1490 -520 1490 -370 {lab=#net5}
N 780 -330 980 -330 {lab=Vout}
N 640 -520 680 -520 {
lab=#net6}
N 640 -330 720 -330 {
lab=#net7}
N 640 -380 640 -330 {
lab=#net7}
N 640 -520 640 -440 {
lab=#net6}
N 500 -330 540 -330 {
lab=Vref}
N 600 -330 640 -330 {
lab=#net7}
N 460 -330 500 -330 {
lab=Vref}
N 500 -570 500 -330 {
lab=Vref}
N 500 -570 680 -570 {
lab=Vref}
N 1160 -440 1170 -440 {lab=#net8}
N 860 -540 900 -540 {lab=Vrefp}
N 210 -480 210 -440 {
lab=GND}
N 300 -480 300 -440 {
lab=GND}
N 390 -480 390 -440 {
lab=GND}
N 300 -550 300 -540 {lab=VDD}
N 300 -570 300 -550 {lab=VDD}
N 210 -570 210 -540 {lab=VSS}
N 390 -570 390 -540 {lab=Vref}
C {lab_pin.sym} 980 -220 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1290 -340 2 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1290 -300 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 640 -410 0 0 {name=V5 value="AC 1" savecurrent=false}
C {capa.sym} 570 -330 1 0 {name=C2
m=1
value=10G
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 750 -330 1 0 {name=L4
m=1
value=10G
footprint=1206
device=inductor}
C {lab_pin.sym} 750 -460 2 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 750 -440 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 -420 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -330 2 1 {name=p10 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 1010 -340 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 900 -610 0 1 {name=p17 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 980 -630 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 980 -360 2 1 {name=p1 sig_type=std_logic lab=Vout}
C {res.sym} 980 -290 0 0 {name=R1
value="600k tc1=200e-6"
footprint=1206
device=resistor
m=1}
C {code.sym} 50 -550 0 0 {name=AC only_toplevel=true value="
.save all
.control
save all

*AC simulation
ac dec 10 1 10e9

* measure parameters
    let vout_mag = db(abs(v(Vout)))
    let vout_phase = cph(v(Vout)) * 180/pi
    let gm = (-1)*db(abs(v(Vout)))

    meas ac A0 find vout_mag at=10
    meas ac UGB when vout_mag=0 fall=1
    meas ac PM find vout_phase when vout_mag=0
    meas ac GM find gm when vout_phase=0

set wr_singlescale
*set wr_vecnames
echo $&A0 $&UGB $&PM $&GM > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"


    

    }
C {noconn.sym} 1170 -440 2 0 {name=l1}
C {devices/vsource.sym} 210 -510 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 210 -440 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 300 -510 0 0 {name=V3 value=CACE\{VDD\} savecurrent=false}
C {devices/gnd.sym} 300 -440 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 390 -510 0 0 {name=V6 value=CACE\{Vref\} savecurrent=false}
C {devices/gnd.sym} 390 -440 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 390 -570 2 1 {name=p4 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 300 -570 2 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -570 2 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 40 -850 0 0 {name=SETUP
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
C {/foss/designs/chipathon_2025/designs/gf180/error_amplifier_N_input/xschem/error_amplifier_N_input.sym} 770 -540 0 0 {name=x1}
C {/foss/designs/chipathon_2025/designs/gf180/current_reference_second_stage/xschem/current_reference_second_stage.sym} 1030 -480 0 0 {name=x2}
C {/foss/designs/chipathon_2025/designs/gf180/current_reference_load/xschem/current_reference_load.sym} 1430 -320 0 0 {name=x3}
