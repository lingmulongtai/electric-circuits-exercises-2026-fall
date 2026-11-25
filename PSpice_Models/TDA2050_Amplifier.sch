*version 9.1 914223484
u 303
R? 8
C? 8
V? 3
U? 2
? 3
@libraries
@analysis
.AC 1 3 1
+0 50
+1 0.1
+2 100Meg
+3 V(VOUT)
+4 Vin
+5 30
.TRAN 1 0 0 1
+0 5us
+1 5ms
+2 0
+3 5us
+4 1Meg
+5 V(VOUT)
.PROBE 0 0 1 1 0 2
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=DEFAULT
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
a 0 u 13 0 0 0 hln 100 TANGO=PCB
a 0 u 13 0 0 0 hln 100 SCICARDS=PCB
a 0 u 13 0 0 0 hln 100 PROTEL=PCB
a 0 u 13 0 0 0 hln 100 PCAD=PCB
a 0 u 13 0 0 0 hln 100 PADS=PCB
a 0 u 13 0 0 0 hln 100 ORCAD=PCB
a 0 u 13 0 0 0 hln 100 EDIF=PCB
a 0 u 13 0 0 0 hln 100 CADSTAR=PCB
a 0 u 13 0 0 0 hln 100 POLARIS=PCB
@setup
unconnectedPins 1
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 7838 
@status
c 126:10:23:04:00:00;1795374000
n 0 126:10:23:15:35:00;1795415700 e 
s 2832 126:10:23:16:03:34;1795417414 e 
*page 1 0 1520 970 iA
@ports
port 101 agnd 140 240 h
port 102 agnd 200 360 h
port 103 agnd 240 510 h
port 104 agnd 300 510 h
port 105 agnd 480 210 h
port 106 agnd 600 210 h
port 107 agnd 540 380 h
port 108 agnd 470 540 h
port 109 agnd 680 470 h
port 110 agnd 820 430 h
@parts
part 1 vdc 140 180 h
a 1 s 9 0 24 7 hcn 100 REFDES=Vs
a 1 u 13 0 -11 18 hcn 100 DC=15V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 s 0:13 0 0 0 hln 100 PKGREF=Vs
part 2 vsin 200 300 h
a 1 s 9 0 20 10 hcn 100 REFDES=Vin
a 1 u 0 0 0 0 hcn 100 DC=0V
a 1 u 0 0 0 0 hcn 100 AC=1V
a 1 u 0 0 0 0 hcn 100 VOFF=0V
a 1 u 0 0 0 0 hcn 100 VAMPL=0.1V
a 1 u 0 0 0 0 hcn 100 FREQ=1kHz
a 0 s 0:13 0 0 0 hln 100 PKGREF=Vin
part 3 r 300 200 v
a 0 s 9 0 15 0 hln 100 REFDES=R1
a 0 u 13 0 15 25 hln 100 VALUE=22k
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=R1
part 4 r 300 490 v
a 0 s 9 0 15 0 hln 100 REFDES=R2
a 0 u 13 0 15 25 hln 100 VALUE=22k
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=R2
part 5 r 420 380 v
a 0 s 9 0 15 0 hln 100 REFDES=R3
a 0 u 13 0 15 25 hln 100 VALUE=22k
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=R3
part 6 r 470 520 v
a 0 s 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 15 25 hln 100 VALUE=680
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=R4
part 7 r 520 410 h
a 0 s 9 0 15 0 hln 100 REFDES=R5
a 0 u 13 0 15 25 hln 100 VALUE=22k
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=R5
part 8 r 680 400 v
a 0 s 9 0 15 0 hln 100 REFDES=R6
a 0 u 13 0 15 25 hln 100 VALUE=2.2
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=R6
part 9 r 820 400 v
a 0 s 9 0 15 0 hln 100 REFDES=RL
a 0 u 13 0 15 25 hln 100 VALUE=8
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0:13 0 0 0 hln 100 PKGREF=RL
part 10 c 340 300 h
a 0 s 9 0 15 0 hln 100 REFDES=C1
a 0 u 13 0 15 25 hln 100 VALUE=2.2u
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C1
part 11 c 240 480 v
a 0 s 9 0 15 0 hln 100 REFDES=C2
a 0 u 13 0 15 25 hln 100 VALUE=100u
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C2
part 12 c 480 190 v
a 0 s 9 0 15 0 hln 100 REFDES=C3
a 0 u 13 0 15 25 hln 100 VALUE=1000u
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C3
part 13 c 470 460 v
a 0 s 9 0 15 0 hln 100 REFDES=C4
a 0 u 13 0 15 25 hln 100 VALUE=22u
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C4
part 14 c 600 190 v
a 0 s 9 0 15 0 hln 100 REFDES=C5
a 0 u 13 0 15 25 hln 100 VALUE=100n
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C5
part 16 c 680 450 v
a 0 s 9 0 15 0 hln 100 REFDES=C6
a 0 u 13 0 15 25 hln 100 VALUE=0.47u
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C6
part 17 c 720 320 h
a 0 s 9 0 15 0 hln 100 REFDES=C7
a 0 u 13 0 15 25 hln 100 VALUE=1000u
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0:13 0 0 0 hln 100 PKGREF=C7
part 15 TDA2050_SIMPLE 500 300 h
a 0 s 9 0 56 8 hcn 100 REFDES=U1
a 0 sp 11 0 14 70 hcn 100 PART=TDA2050_SIMPLE
a 0 sp 0 0 50 60 hcn 100 MODEL=TDA2050_SIMPLE
a 0 s 0:13 0 0 0 hln 100 TEMPLATE=X^@REFDES %+ %- %V- %OUT %V+ @MODEL
a 0 s 0:13 0 0 0 hln 100 PKGREF=U1
part 18 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=TDA2050 Single Supply Amplifier (M98TDA2050-04)
a 1 u 13 0 116 95 hln 100 Date=November 23, 2026
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 300 nodeMarker 820 320 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 301 nodeMarker 330 300 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 201
a 0 s 3 0 200 138 hln 100 LABEL=VS
a 0 up 0:33 0 0 0 hln 100 V=
s 140 180 140 140 202
s 140 140 300 140 203
s 300 140 300 160 204
s 300 140 480 140 205
a 0 up 33 0 390 139 hct 100 V=
s 480 140 480 160 206
s 480 140 540 140 207
s 540 140 540 290 208
s 540 140 600 140 209
s 600 140 600 160 210
w 211
a 0 up 0:33 0 0 0 hln 100 V=
s 140 220 140 240 212
a 0 up 33 0 142 230 hlt 100 V=
w 215
a 0 up 0:33 0 0 0 hln 100 V=
s 200 340 200 360 216
a 0 up 33 0 202 350 hlt 100 V=
w 217
a 0 s 3 0 330 418 hln 100 LABEL=VBIAS
a 0 up 0:33 0 0 0 hln 100 V=
s 300 200 300 420 218
a 0 up 33 0 302 310 hlt 100 V=
s 240 420 300 420 219
s 240 420 240 450 220
s 300 420 300 450 221
s 300 420 420 420 222
s 420 380 420 420 223
w 224
a 0 up 0:33 0 0 0 hln 100 V=
s 240 480 240 510 225
a 0 up 33 0 242 495 hlt 100 V=
w 226
a 0 up 0:33 0 0 0 hln 100 V=
s 300 490 300 510 227
a 0 up 33 0 302 500 hlt 100 V=
w 228
a 0 s 3 0 445 298 hln 100 LABEL=INP
a 0 up 0:33 0 0 0 hln 100 V=
s 370 300 420 300 229
s 420 300 420 340 230
s 420 300 500 300 231
a 0 up 33 0 460 299 hct 100 V=
w 232
a 0 up 0:33 0 0 0 hln 100 V=
s 480 190 480 210 233
a 0 up 33 0 482 200 hlt 100 V=
w 234
a 0 up 0:33 0 0 0 hln 100 V=
s 600 190 600 210 235
a 0 up 33 0 602 200 hlt 100 V=
w 236
a 0 up 0:33 0 0 0 hln 100 V=
s 540 350 540 380 237
a 0 up 33 0 542 365 hlt 100 V=
w 238
a 0 s 3 0 475 338 hln 100 LABEL=INM
a 0 up 0:33 0 0 0 hln 100 V=
s 470 340 500 340 239
s 470 340 470 410 240
a 0 up 33 0 472 375 hlt 100 V=
s 470 410 520 410 241
s 470 410 470 430 242
w 243
a 0 s 3 0 475 470 hln 100 LABEL=NC4
a 0 up 0:33 0 0 0 hln 100 V=
s 470 460 470 480 244
a 0 up 33 0 472 470 hlt 100 V=
w 245
a 0 up 0:33 0 0 0 hln 100 V=
s 470 520 470 540 246
a 0 up 33 0 472 530 hlt 100 V=
w 247
a 0 s 3 0 625 318 hln 100 LABEL=VOUT_AMP
a 0 up 0:33 0 0 0 hln 100 V=
s 580 320 620 320 248
s 620 320 620 410 249
a 0 up 33 0 622 365 hlt 100 V=
s 560 410 620 410 250
s 620 320 680 320 251
s 680 320 680 360 252
s 680 320 720 320 253
w 254
a 0 s 3 0 685 415 hln 100 LABEL=NZOBEL
a 0 up 0:33 0 0 0 hln 100 V=
s 680 400 680 420 255
a 0 up 33 0 682 410 hlt 100 V=
w 256
a 0 up 0:33 0 0 0 hln 100 V=
s 680 450 680 470 257
a 0 up 33 0 682 460 hlt 100 V=
w 261
a 0 up 0:33 0 0 0 hln 100 V=
s 820 400 820 430 262
a 0 up 33 0 822 415 hlt 100 V=
w 258
a 0 s 3 0 775 318 hln 100 LABEL=VOUT
a 0 up 0:33 0 0 0 hln 100 V=
s 750 320 820 320 259
a 0 up 33 0 785 319 hct 100 V=
s 820 320 820 360 260
w 213
a 0 s 3 0 230 298 hln 100 LABEL=VIN
a 0 up 0:33 0 0 0 hln 100 V=
s 200 300 330 300 214
a 0 up 33 0 270 299 hct 100 V=
s 330 300 340 300 302
@junction
j 140 180
+ p 1 +
+ w 201
j 300 140
+ w 201
+ w 201
j 300 160
+ p 3 2
+ w 201
j 480 140
+ w 201
+ w 201
j 480 160
+ p 12 2
+ w 201
j 540 140
+ w 201
+ w 201
j 540 290
+ p 15 V+
+ w 201
j 600 160
+ p 14 2
+ w 201
j 140 220
+ p 1 -
+ w 211
j 140 240
+ s 101
+ w 211
j 200 300
+ p 2 +
+ w 213
j 340 300
+ p 10 1
+ w 213
j 200 340
+ p 2 -
+ w 215
j 200 360
+ s 102
+ w 215
j 300 200
+ p 3 1
+ w 217
j 300 420
+ w 217
+ w 217
j 240 450
+ p 11 2
+ w 217
j 300 450
+ p 4 2
+ w 217
j 420 380
+ p 5 1
+ w 217
j 240 480
+ p 11 1
+ w 224
j 240 510
+ s 103
+ w 224
j 300 490
+ p 4 1
+ w 226
j 300 510
+ s 104
+ w 226
j 370 300
+ p 10 2
+ w 228
j 420 300
+ w 228
+ w 228
j 420 340
+ p 5 2
+ w 228
j 500 300
+ p 15 +
+ w 228
j 480 190
+ p 12 1
+ w 232
j 480 210
+ s 105
+ w 232
j 600 190
+ p 14 1
+ w 234
j 600 210
+ s 106
+ w 234
j 540 350
+ p 15 V-
+ w 236
j 540 380
+ s 107
+ w 236
j 500 340
+ p 15 -
+ w 238
j 470 410
+ w 238
+ w 238
j 520 410
+ p 7 1
+ w 238
j 470 430
+ p 13 2
+ w 238
j 470 460
+ p 13 1
+ w 243
j 470 480
+ p 6 2
+ w 243
j 470 520
+ p 6 1
+ w 245
j 470 540
+ s 108
+ w 245
j 580 320
+ p 15 OUT
+ w 247
j 620 320
+ w 247
+ w 247
j 560 410
+ p 7 2
+ w 247
j 680 320
+ w 247
+ w 247
j 680 360
+ p 8 2
+ w 247
j 720 320
+ p 17 1
+ w 247
j 680 400
+ p 8 1
+ w 254
j 680 420
+ p 16 2
+ w 254
j 680 450
+ p 16 1
+ w 256
j 680 470
+ s 109
+ w 256
j 750 320
+ p 17 2
+ w 258
j 820 360
+ p 9 2
+ w 258
j 820 400
+ p 9 1
+ w 261
j 820 430
+ s 110
+ w 261
j 820 320
+ p 300 pin1
+ w 258
j 330 300
+ p 301 pin1
+ w 213
@attributes
a 0 s 0 0 0 0 hln 100 PAGETITLE=TDA2050 Single Supply Amplifier (M98TDA2050-04)
a 0 s 0 0 0 0 hln 100 PAGENO=1
a 0 s 0 0 0 0 hln 100 PAGESIZE=A
a 0 s 0 0 0 0 hln 100 PAGECOUNT=1
@graphics
