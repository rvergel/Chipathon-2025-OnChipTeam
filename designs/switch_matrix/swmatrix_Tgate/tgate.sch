v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -171.25 0 -131.25 0 {
lab=GN}
N -91.25 -60 -91.25 -30 {
lab=B}
N -91.25 0 -21.25 0 {
lab=BN}
N -91.25 40 -91.25 60 {
lab=A}
N -91.25 40 78.75 40 {
lab=A}
N -91.25 30 -91.25 40 {
lab=A}
N 18.75 0 78.75 0 {
lab=BP}
N -91.25 -30 78.75 -30 {
lab=B}
N 78.75 30 78.75 40 {
lab=A}
N 118.75 0 158.75 0 {
lab=GP}
C {iopin.sym} -91.25 -60 0 0 {name=p1 lab=B}
C {iopin.sym} -171.25 0 0 1 {name=p3 lab=GN}
C {iopin.sym} -91.25 60 0 0 {name=p4 lab=A}
C {iopin.sym} 158.75 0 0 0 {name=p2 lab=GP}
C {lab_pin.sym} -41.25 0 1 1 {name=p5 sig_type=std_logic lab=BN}
C {lab_pin.sym} 38.75 0 1 1 {name=p6 sig_type=std_logic lab=BP}
C {iopin.sym} -11.25 -100 0 0 {name=p7 lab=BN}
C {iopin.sym} -11.25 -70 0 0 {name=p8 lab=BP}
C {symbols/nfet_03v3.sym} -111.25 0 2 1 {name=M1
L=0.28u
W=2u
nf=6
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
C {symbols/pfet_03v3.sym} 98.75 0 0 1 {name=M2
L=0.28u
W=6u
nf=6
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
