v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {3.3V Devices
Default sizing should give 100 Ohm resistance} 105 -465.625 0 0 0.3 0.3 {}
N -140 -130 -100 -130 {
lab=gated_control}
N -60 -190 -60 -160 {
lab=T2}
N -60 -90 -60 -70 {
lab=T1}
N -60 -90 110 -90 {
lab=T1}
N -60 -100 -60 -90 {
lab=T1}
N -60 -160 110 -160 {
lab=T2}
N 110 -100 110 -90 {
lab=T1}
N 150 -130 240 -130 {
lab=gated_controlb}
N 336.25 -284.375 480 -284.375 {lab=gated_controlb}
N -60 -130 -20 -130 {lab=VSSd}
N 45 -130 110 -130 {lab=VDDd}
N 45 3.75 60 3.75 {lab=VDDd}
N 45 -130 45 3.75 {lab=VDDd}
N -20 -130 -20 -6.25 {lab=VSSd}
N -100 -6.25 -20 -6.25 {lab=VSSd}
N -146.25 -301.875 -96.25 -301.875 {lab=control}
N -145 -260.625 -96.875 -260.625 {lab=enable}
N -96.875 -261.875 -96.875 -260.625 {lab=enable}
N 256.25 -284.375 256.25 -283.75 {lab=gated_control}
N 480 -284.375 480 -283.75 {lab=gated_controlb}
N 232.5 -285.625 232.5 -283.75 {lab=gated_control}
N 145 -283.75 232.5 -283.75 {lab=gated_control}
N 232.5 -283.75 256.25 -283.75 {lab=gated_control}
N 28.125 -283.75 65 -283.75 {lab=#net1}
N 23.125 -281.875 28.125 -281.875 {lab=#net1}
N 28.125 -283.75 28.125 -281.875 {lab=#net1}
C {iopin.sym} -60 -70 0 1 {name=p1 lab=T1}
C {iopin.sym} -60 -190 0 0 {name=p2 lab=T2}
C {iopin.sym} 60 3.75 0 0 {name=p9 lab=VDDd
}
C {iopin.sym} -100 -6.25 0 1 {name=p10 lab=VSSd
}
C {symbols/nfet_03v3.sym} -80 -130 2 1 {name=M1
L=0.28u
W=mn_w
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
C {symbols/pfet_03v3.sym} 130 -130 0 1 {name=M2
L=0.28u
W=mp_w
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
C {code_shown.sym} -127.5 -479.375 0 0 {name=Parameters only_toplevel=false value="
.param mn_w=24u
.param mp_w=72u"}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 296.25 -284.375 0 0 {name=x1 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 480 -283.75 0 0 {name=p14 sig_type=std_logic lab=gated_controlb}
C {lab_wire.sym} 240 -130 0 0 {name=p7 sig_type=std_logic lab=gated_controlb
}
C {lab_wire.sym} -138.75 -130 0 0 {name=p5 sig_type=std_logic lab=gated_control}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/nand2_1.sym} -36.875 -281.875 0 0 {name=x2 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {ipin.sym} -146.25 -301.875 0 0 {name=p4 lab=control}
C {ipin.sym} -145 -260.625 0 0 {name=p6 lab=enable}
C {libs/gf180mcu_fd_sc_mcu9t5v0_symbols/inv_1.sym} 105 -283.75 0 0 {name=x3 VGND=VSSd VNB=VDDd VPB=VSSd VPWR=VDDd prefix=gf180mcu_fd_sc_mcu9t5v0__ }
C {lab_wire.sym} 232.5 -285.625 0 0 {name=p8 sig_type=std_logic lab=gated_control}
