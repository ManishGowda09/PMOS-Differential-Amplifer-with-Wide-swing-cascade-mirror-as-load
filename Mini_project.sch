v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -170 190 -170 230 {lab=0}
N -170 230 130 230 {lab=0}
N 130 190 130 230 {lab=0}
N -170 30 -170 130 {lab=#net1}
N 130 30 130 130 {lab=#net2}
N -170 -150 -170 -30 {lab=#net3}
N 130 -150 130 -30 {lab=Vout}
N -170 -280 -170 -210 {lab=#net4}
N -170 -280 130 -280 {lab=#net4}
N 130 -280 130 -210 {lab=#net4}
N -400 30 -400 80 {lab=0}
N -450 -0 -400 -0 {lab=0}
N 140 -530 180 -530 {lab=0}
N 180 -530 180 -520 {lab=0}
N -0 -370 0 -280 {lab=#net4}
N -0 -400 40 -400 {lab=#net5}
N 40 -470 40 -400 {lab=#net5}
N -290 -220 -270 -220 {lab=Vin1}
N -270 -220 -270 -180 {lab=Vin1}
N 200 -220 220 -220 {lab=Vin2}
N 200 -220 200 -180 {lab=Vin2}
N 0 -530 -0 -430 {lab=#net5}
N -0 -530 80 -530 {lab=#net5}
N 40 -530 40 -470 {lab=#net5}
N -400 -180 -400 -30 {lab=#net6}
N -400 -530 -0 -530 {lab=#net5}
N -400 -240 -400 -180 {lab=#net6}
N -400 -530 -400 -300 {lab=#net5}
N 130 0 170 0 {lab=0}
N 170 0 170 30 {lab=0}
N 130 160 170 160 {lab=0}
N 170 160 170 230 {lab=0}
N 130 230 170 230 {lab=0}
N -200 0 -200 30 {lab=0}
N -200 -0 -170 0 {lab=0}
N -130 -0 90 0 {lab=#net6}
N -200 160 -170 160 {lab=0}
N -200 160 -200 230 {lab=0}
N -200 230 -170 230 {lab=0}
N -130 160 90 160 {lab=#net3}
N -170 -60 -80 -60 {lab=#net3}
N -80 -60 -80 160 {lab=#net3}
N -30 -70 -30 0 {lab=#net6}
N -340 -70 -30 -70 {lab=#net6}
N -340 -70 -340 -0 {lab=#net6}
N -360 0 -340 -0 {lab=#net6}
N -400 -70 -340 -70 {lab=#net6}
N -270 -110 -270 -100 {lab=0}
N -270 -180 -270 -170 {lab=Vin1}
N 100 -180 130 -180 {lab=#net5}
N 70 -180 100 -180 {lab=#net5}
N 70 -530 70 -180 {lab=#net5}
N -170 -180 -150 -180 {lab=#net5}
N -150 -180 -140 -180 {lab=#net5}
N -140 -180 -130 -180 {lab=#net5}
N -130 -530 -130 -180 {lab=#net5}
N -270 -180 -210 -180 {lab=Vin1}
N 200 -110 200 -100 {lab=0}
N 200 -180 200 -170 {lab=Vin2}
N 170 -180 200 -180 {lab=Vin2}
N 130 -50 400 -50 {lab=Vout}
N 350 50 350 70 {lab=0}
N 350 -50 350 -10 {lab=Vout}
N -480 0 -480 50 {lab=0}
N -480 0 -450 0 {lab=0}
N -0 230 0 250 {lab=0}
N -80 -400 -80 -390 {lab=Vb}
N -80 -400 -40 -400 {lab=Vb}
N -110 -400 -80 -400 {lab=Vb}
N -80 -330 -80 -320 {lab=0}
N -190 -400 -170 -400 {lab=#net5}
N -190 -530 -190 -400 {lab=#net5}
N -60 -430 -60 -400 {lab=Vb}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -190 -180 0 0 {name=M2
W=10
L=10
nf=1
mult=11
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 150 -180 0 1 {name=M3
W=10
L=10
nf=1
mult=11
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -150 0 0 1 {name=M4
W=15
L=5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 110 0 0 0 {name=M5
W=15
L=5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -150 160 0 1 {name=M6
W=15
L=5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 110 160 0 0 {name=M7
W=15
L=5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -380 0 0 1 {name=M8
W=3.75
L=5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 0 250 0 0 {name=l1 lab=0}
C {gnd.sym} -400 80 0 0 {name=l2 lab=0}
C {vsource.sym} 110 -530 3 1 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 180 -520 0 0 {name=l3 lab=0}
C {gnd.sym} -80 -320 0 1 {name=l5 lab=0}
C {vsource.sym} -270 -140 0 0 {name=Vin1 value="sin(0.55 1m 1k) AC 0.5" savecurrent=false}
C {gnd.sym} -270 -100 0 1 {name=l6 lab=0}
C {vsource.sym} 200 -140 0 0 {name=Vin2 value="sin(0.55 -1m 1k) AC -0.5" savecurrent=false}
C {gnd.sym} 200 -100 0 1 {name=l7 lab=0}
C {gnd.sym} -200 30 0 0 {name=l9 lab=0}
C {gnd.sym} 170 30 0 0 {name=l10 lab=0}
C {ipin.sym} -290 -220 0 0 {name=p1 lab=Vin1}
C {ipin.sym} 220 -220 0 1 {name=p2 lab=Vin2}
C {opin.sym} 400 -50 0 0 {name=p4 lab=Vout}
C {code.sym} 500 -110 0 0 {name=Mini_project only_toplevel=false value="
.lib /foss/pdks/ciel/sky130/versions/b344c97eacc2aaf8e14ae7e43e2e9dc0871de2c0/sky130A/libs.tech/ngspice/sky130.lib.spice tt

Vtest vt_node 0 dc 0
S1 Vout vt_node ctrl 0 SW1
Vsw ctrl 0 dc 0
.model SW1 SW(Vt=0.5 Vh=0.1 Ron=1m Roff=1e15)

.control
  option temp = 27
  alter vdd dc = 1.8
  set color0=white
  set color1=black
  set color2=red
  set color3=blue

  op
  echo --- Tail Transistor M1 ---
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vds]
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vdsat]
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  print @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]

  echo --- Differential Pair M2 ---
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[id]
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vds]
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vdsat]
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vgs]
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[vth]
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
  print @m.xm2.msky130_fd_pr__pfet_01v8_lvt[gds]

  echo --- Differential Pair M3 ---
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[vds]
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[vdsat]
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[vgs]
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[vth]
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
  print @m.xm3.msky130_fd_pr__pfet_01v8_lvt[gds]

  echo --- Current Mirror M4 ---
  print @m.xm4.msky130_fd_pr__nfet_01v8[id]
  print @m.xm4.msky130_fd_pr__nfet_01v8[vds]
  print @m.xm4.msky130_fd_pr__nfet_01v8[vdsat]
  print @m.xm4.msky130_fd_pr__nfet_01v8[vgs]
  print @m.xm4.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm4.msky130_fd_pr__nfet_01v8[gm]
  print @m.xm4.msky130_fd_pr__nfet_01v8[gds]

  echo --- Current Mirror M5 ---
  print @m.xm5.msky130_fd_pr__nfet_01v8[id]
  print @m.xm5.msky130_fd_pr__nfet_01v8[vds]
  print @m.xm5.msky130_fd_pr__nfet_01v8[vdsat]
  print @m.xm5.msky130_fd_pr__nfet_01v8[vgs]
  print @m.xm5.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm5.msky130_fd_pr__nfet_01v8[gm]
  print @m.xm5.msky130_fd_pr__nfet_01v8[gds]

  echo --- Cascode Current Mirror M6 ---
  print @m.xm6.msky130_fd_pr__nfet_01v8[id]
  print @m.xm6.msky130_fd_pr__nfet_01v8[vds]
  print @m.xm6.msky130_fd_pr__nfet_01v8[vdsat]
  print @m.xm6.msky130_fd_pr__nfet_01v8[vgs]
  print @m.xm6.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm6.msky130_fd_pr__nfet_01v8[gm]
  print @m.xm6.msky130_fd_pr__nfet_01v8[gds]

  echo --- Cascode Current Mirror M7 ---
  print @m.xm7.msky130_fd_pr__nfet_01v8[id]
  print @m.xm7.msky130_fd_pr__nfet_01v8[vds]
  print @m.xm7.msky130_fd_pr__nfet_01v8[vdsat]
  print @m.xm7.msky130_fd_pr__nfet_01v8[vgs]
  print @m.xm7.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm7.msky130_fd_pr__nfet_01v8[gm]
  print @m.xm7.msky130_fd_pr__nfet_01v8[gds]

  echo --- Bias Transistor M8 ---
  print @m.xm8.msky130_fd_pr__nfet_01v8[id]
  print @m.xm8.msky130_fd_pr__nfet_01v8[vds]
  print @m.xm8.msky130_fd_pr__nfet_01v8[vdsat]
  print @m.xm8.msky130_fd_pr__nfet_01v8[vgs]
  print @m.xm8.msky130_fd_pr__nfet_01v8[vth]
  print @m.xm8.msky130_fd_pr__nfet_01v8[gm]
  print @m.xm8.msky130_fd_pr__nfet_01v8[gds]


* ---------- Power dissipation (DC operating point) ----------

  let i_vdd = -i(vdd)
  let p_diss = 1.8 * i_vdd

  echo --- * Supply current and Power dissipation * ---

  print i_vdd p_diss


* ---------- Transient ----------

  tran 1u 5m

 plot v(vin1) v(vin2) title 'Input: differential sine (1 kHz)'
 plot v(vout) title 'Output: 1 kHz response'



* ---------- Differential : gain, bandwidth, phase margin ----------

  alter Vin1 ac = 0.5
  alter Vin2 ac = -0.5
  ac dec 50 1 10g
  let ad_db = db(v(vout))
  let ad_ph = ph(v(vout)) * 180 / pi
  let ad_ph_rel = ad_ph - ad_ph[0]
  let dist3 = ad_db - (ad_db[0] - 3)
  meas ac f_3dB WHEN dist3=0 CROSS=1
  meas ac f_ugf WHEN ad_db=0 CROSS=1
  meas ac phase_at_ugf FIND ad_ph_rel WHEN ad_db=0 CROSS=1
  let pm_deg = 180 + phase_at_ugf

  echo --- * Differential Gain, Bandwidth, Phase margin * ---
  print ad_db[0] f_3dB f_ugf pm_deg
  plot ad_db title 'Differential Gain Ad (dB)'
  plot ad_ph title 'Differential Phase (deg)'


* ---------- CMRR ----------

  alter Vin1 ac = 1
  alter Vin2 ac = 0
  ac dec 50 1 10g

  alter Vin1 ac = 0
  alter Vin2 ac = 1
  ac dec 50 1 10g


  let Ad_c   = (ac2.v(vout) - ac3.v(vout)) / 2
  let Acm_c  = ac2.v(vout) + ac3.v(vout)
  let cmrr_c = db(Ad_c / Acm_c)

  echo --- * Differential Gain Ad(dB), Common-mode Gain Acm(dB), CMRR(dB) * ---

  print db(Ad_c)[0] db(Acm_c)[0] cmrr_c[0]
  plot db(Ad_c) db(Acm_c) title 'Ad and Acm (dB)'
  plot cmrr_c title 'CMRR (dB)'


  alter Vin1 ac = 0.5
  alter Vin2 ac = -0.5

* ---------- DC transfer ----------
  dc Vin2 0 1.8 0.01
  plot Vout title 'DC transfer Characteristic'

  write miniproject.raw

* ---------- Io vs Vo sweep (M5/M7 cascode mirror output current) ----------
  alter Vsw dc = 1
  save all @m.xm5.msky130_fd_pr__nfet_01v8[id] @m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
  dc Vtest 0 1.8 0.005

  let Iout = @m.xm5.msky130_fd_pr__nfet_01v8[id]
  let Im3  = -@m.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
  let Vo   = v(vout)

  plot Iout vs Vo title 'Io vs Vo (M5/M7 cascode mirror)' xlabel 'Vout (V)' ylabel 'Iout (A)'
  plot Iout Im3 vs Vo title 'M5 sink vs M3 source' xlabel 'Vout (V)' ylabel 'Current (A)'

  let p_v = -1.8 * i(vdd) * 1e6
  plot p_v vs Vo title 'Power vs output voltage (uW)' xlabel 'Vout (V)' ylabel 'Power (uW)'

  alter Vsw dc = 0
.endc
"}
C {gnd.sym} -480 50 0 0 {name=l4 lab=0}
C {res.sym} -400 -270 0 0 {name=R1
value=80K
footprint=1206
device=resistor
m=1}
C {capa.sym} 350 20 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 350 70 0 1 {name=l12 lab=0}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -20 -400 0 0 {name=M1
W=20.2
L=10
nf=1
mult=11
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {res.sym} -80 -360 0 0 {name=R2
value=17K
footprint=1206
device=resistor
m=1}
C {res.sym} -140 -400 1 0 {name=R3
value=10K
footprint=1206
device=resistor
m=1}
C {ipin.sym} -60 -430 3 1 {name=p3 lab=Vb}
