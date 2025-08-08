v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Reference 1uA} 630 -70 0 0 0.4 0.4 {}
T {Reference 50uA} 830 -70 0 0 0.4 0.4 {}
T {900mV} 240 -510 0 0 0.4 0.4 {}
T {900mV} 390 -160 0 0 0.4 0.4 {}
N 350 -350 350 -200 {
lab=Vres}
N 350 -530 350 -410 {
lab=VDD}
N 530 -530 530 -410 {
lab=VDD}
N 430 -410 490 -410 {
lab=Vrefp}
N 260 -470 260 -410 {
lab=Vrefp}
N 430 -470 430 -410 {
lab=Vrefp}
N 530 -250 530 -200 {
lab=Vrefn}
N 450 -170 490 -170 {
lab=Vrefn}
N 450 -250 450 -170 {
lab=Vrefn}
N 450 -250 530 -250 {
lab=Vrefn}
N 530 -170 530 -90 {
lab=VSS}
N 710 -170 710 -90 {
lab=VSS}
N 610 -170 670 -170 {
lab=Vrefn}
N 610 -230 610 -170 {
lab=Vrefn}
N 610 -410 670 -410 {
lab=Vrefp}
N 610 -470 610 -410 {
lab=Vrefp}
N 710 -530 710 -410 {
lab=VDD}
N 710 -270 710 -200 {
lab=Iref1n}
N 710 -380 710 -310 {
lab=Iref1p}
N 910 -170 910 -90 {
lab=VSS}
N 810 -170 870 -170 {
lab=Vrefn}
N 810 -230 810 -170 {
lab=Vrefn}
N 810 -410 870 -410 {
lab=Vrefp}
N 810 -470 810 -410 {
lab=Vrefp}
N 910 -530 910 -410 {
lab=VDD}
N 910 -270 910 -200 {
lab=Iref50n}
N 910 -380 910 -310 {
lab=Iref50p}
N 180 -350 280 -350 {
lab=Vcomn}
N 180 -320 280 -320 {
lab=Vcomn}
N 320 -350 350 -350 {
lab=Vres}
N 180 -350 180 -320 {
lab=Vcomn}
N 180 -380 280 -380 {
lab=Vcomn}
N 150 -350 180 -350 {
lab=Vcomn}
N 260 -410 310 -410 {lab=Vrefp}
N 530 -380 530 -250 {
lab=Vrefn}
N 180 -380 180 -350 {
lab=Vcomn}
N 350 -380 350 -350 {
lab=Vres}
C {lab_pin.sym} 350 -530 2 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 530 -530 2 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 260 -470 0 1 {name=p8 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 430 -470 0 1 {name=p9 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 530 -90 2 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 -90 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 610 -230 0 1 {name=p12 sig_type=std_logic lab=Vrefn}
C {lab_pin.sym} 450 -230 0 0 {name=p13 sig_type=std_logic lab=Vrefn}
C {lab_pin.sym} 610 -470 0 1 {name=p14 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 710 -530 2 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 910 -90 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 810 -230 0 1 {name=p18 sig_type=std_logic lab=Vrefn}
C {lab_pin.sym} 810 -470 0 1 {name=p19 sig_type=std_logic lab=Vrefp}
C {lab_pin.sym} 910 -530 2 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 710 -310 2 1 {name=p30 sig_type=std_logic lab=Iref1p}
C {lab_pin.sym} 910 -310 2 1 {name=p33 sig_type=std_logic lab=Iref50p}
C {lab_pin.sym} 910 -270 2 1 {name=p38 sig_type=std_logic lab=Iref50n}
C {lab_pin.sym} 710 -270 2 1 {name=p39 sig_type=std_logic lab=Iref1n}
C {iopin.sym} 1020 -380 0 0 {name=p23 lab=VDD}
C {iopin.sym} 1020 -420 0 0 {name=p24 lab=VSS}
C {iopin.sym} 1020 -340 0 0 {name=p25 lab=Vrefp}
C {iopin.sym} 1020 -300 0 0 {name=p27 lab=Vrefn}
C {iopin.sym} 1020 -260 0 0 {name=p15 lab=Iref1n}
C {iopin.sym} 1020 -220 0 0 {name=p21 lab=Iref50n}
C {iopin.sym} 1020 -180 0 0 {name=p26 lab=Iref1p}
C {iopin.sym} 1020 -140 0 0 {name=p28 lab=Iref50p}
C {lab_pin.sym} 350 -200 2 1 {name=p5 sig_type=std_logic lab=Vres}
C {iopin.sym} 1020 -460 0 0 {name=p29 lab=Vres}
C {lab_pin.sym} 150 -350 2 1 {name=p1 sig_type=std_logic lab=Vcomn}
C {iopin.sym} 1020 -500 0 0 {name=p2 lab=Vcomn}
C {symbols/nfet_03v3.sym} 510 -170 0 0 {name=M6
L=2u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 300 -350 0 1 {name=M5
L=2u
W=5u
nf=1
m=60
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 330 -410 0 0 {name=M1
L=2u
W=5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 510 -410 0 0 {name=M2
L=2u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 690 -410 0 0 {name=M3
L=2u
W=5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 890 -410 0 0 {name=M4
L=2u
W=5u
nf=1
m=50
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 690 -170 0 0 {name=M7
L=2u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 890 -170 0 0 {name=M8
L=2u
W=0.5u
nf=1
m=50
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
