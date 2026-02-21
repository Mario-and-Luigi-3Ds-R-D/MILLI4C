PUSH            {R0-R11,LR}
ADD             R0, R0, #4
MOV             R11, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0xB4
LDR             R9, [SP,#0x108+arg_0]
BL              sub_14CB8C
MOV             R5, R0
LDR             R0, =off_6C3360
MOV             R7, #0
LDR             R6, =0xFFFF
STR             R0, [R5]
STR             R7, [R5,#0x100]
STR             R7, [R5,#0x104]
ADD             R4, R5, #0x100
STR             R7, [R5,#0x108]
STR             R7, [R5,#0x10C]
STRH            R6, [R4,#0x10]
VLDR            S16, =0.0
VLDR            S17, =1.0
ADD             R1, R5, #0x114
STRH            R6, [R4,#0x12]
VLDR            S20, =0.04
VLDR            S18, =3.4028e38
VLDR            S19, =14.0
VLDR            S22, =16.0
VLDR            S23, =20.0
VSTM            R1, {S16-S17}
ADD             R1, R5, #0x124
VSTR            S16, [R5,#0x11C]
VSTR            S16, [R5,#0x120]
VSTR            S20, [R5,#0x134]
VSTR            S16, [R5,#0x138]
VSTR            S16, [R5,#0x13C]
VSTM            R1, {S18-S19}
ADD             R1, R5, #0x12C
VSTM            R1, {S22-S23}
STR             R7, [R4,#0x40]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x44 ; 'D'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x4C]
STM             R3, {R1,R2}
BL              sub_4635D8
MOV             R1, R0
LDR             R2, [R0]
LDR             R0, [R0,#4]
LDR             R1, [R1,#8]
STR             R2, [R4,#0x50]
STRD            R0, R1, [R4,#0x54]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x5C ; '\'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x64]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R0-R2}
ADD             R3, R4, #0x68 ; 'h'
STM             R3, {R0-R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R5, R5, #0x180
LDR             R0, [R0,#8]
VLDR            S21, =-10.0
LDR             R8, =0x3E7
STR             R0, [R4,#0x7C]
ADD             R4, R4, #0x74 ; 't'
ADD             R0, R5, #0x14
STM             R4, {R1,R2}
VSTR            S16, [R5]
VSTR            S16, [R5,#4]
VSTR            S21, [R5,#8]
STR             R7, [R5,#0x10]
STR             R8, [R5,#0xC]
BL              sub_5B8A80
ADD             R0, R0, #0x194
BL              sub_14F198
SUB             R12, R0, #0x328
STR             R7, [R0,#0x3F4]!
ADD             R0, R0, #4
MOV             R1, #0x21400
STR             R0, [R0,#0x200]
STR             R0, [R0,#0x204]
ADD             R0, R12, #0x800
ADD             R0, R0, #0x128
MOV             R4, R0
BL              sub_2FFE8C
MOV             R3, #0x20 ; ' '
LDR             R1, =sub_5B93DC
MOV             R0, R4
ADD             R2, R3, #0x1080
BLX             sub_1002F4
LDR             R1, =off_6C3624
ADD             R0, R0, #0x21400
ADD             R4, R0, #4
STR             R1, [R0]
MOV             R5, R0
STR             R4, [R0,#0x84]
STR             R4, [R0,#0x88]!
ADD             R0, R0, #4
MOV             R4, R0
MOV             R1, #0x84
BL              sub_2FFE8C
STR             R4, [R4,#0x88]
ADD             R0, R4, #0x84
STR             R4, [R4,#0x84]
STR             R0, [R4,#0x90]
SUB             R0, R5, #0x21C00
STR             R4, [R4,#0x8C]
SUB             R0, R0, #0x128
MOV             R12, #0
SUB             R4, R5, #0x21400
CMP             R12, #0x20 ; ' '
BCS             loc_2974A0
MOV             R1, R12
ADD             R2, R12, R1,LSL#2
ADD             R1, R2, R1,LSL#7
ADD             R12, R12, #1
ADD             R5, R4, R1,LSL#5
CMP             R12, #0x20 ; ' '
STR             R0, [R5,#4]
BCC             loc_2972B4
SUB             R10, R0, #4
MOV             R0, #0
STRH            R6, [SP,#0x108+var_F0]
ADD             R1, SP, #0x108+var_EC
STR             R0, [SP,#0x108+var_100]
STR             R0, [SP,#0x108+var_FC]
STR             R0, [SP,#0x108+var_F8]
STR             R0, [SP,#0x108+var_F4]
STRH            R6, [SP,#0x108+var_EE]
VSTM            R1, {S16-S17}
ADD             R1, SP, #0x108+var_DC
VSTR            S16, [SP,#0x108+var_E4]
VSTR            S16, [SP,#0x108+var_E0]
VSTR            S20, [SP,#0x108+var_CC]
VSTR            S16, [SP,#0x108+var_C8]
VSTR            S16, [SP,#0x108+var_C4]
VSTM            R1, {S18-S19}
ADD             R1, SP, #0x108+var_D4
VSTM            R1, {S22-S23}
STR             R0, [SP,#0x108+var_C0]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x108+var_BC
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_B4]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x108+var_B0
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_A8]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x108+var_A4
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_9C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x108+var_98
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_90]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x108+var_8C
LDR             R0, [R0,#8]
ADD             R4, SP, #0x108+var_98
ADD             R7, R10, #4
STR             R0, [SP,#0x108+var_84]
STM             R3, {R1,R2}
ADD             R2, SP, #0x108+var_100
LDR             R0, =off_6CE970
VSTR            S16, [SP,#0x108+var_80]
VSTR            S16, [SP,#0x108+var_7C]
VSTR            S21, [SP,#0x108+var_78]
STR             R8, [SP,#0x108+var_74]
LDR             R0, [R0]
LDR             R1, =0x5D4
MOV             R8, #0
ADD             R0, R0, #0x68 ; 'h'
STM             R2, {R0,R11}
ADD             R2, R9, #0x344
LDR             R0, [SP,#0x108+var_2C]
ADD             R11, R10, #0x800
ADD             R11, R11, #0x12C
STR             R0, [SP,#0x108+var_F8]
LDR             R0, [SP,#0x108+var_28]
STR             R0, [SP,#0x108+var_F4]
VSTR            S17, [SP,#0x108+var_DC]
LDR             R0, [R9,#0x378]
STR             R0, [SP,#0x108+var_E8]
LDR             R0, [R9,#0x374]
STR             R0, [SP,#0x108+var_E4]
LDM             R2, {R0,R2,R3}
STM             R4, {R0,R2,R3}
ADD             R2, R9, #0x350
ADD             R4, SP, #0x108+var_B0
LDM             R2, {R0,R2,R3}
STM             R4, {R0,R2,R3}
ADD             R2, R9, #0x35C
ADD             R4, SP, #0x108+var_8C
LDM             R2, {R0,R2,R3}
STM             R4, {R0,R2,R3}
ADD             R2, R9, #0x368
ADD             R4, SP, #0x108+var_A4
LDM             R2, {R0,R2,R3}
STM             R4, {R0,R2,R3}
ADD             R0, SP, #0x108+var_100
STRH            R1, [SP,#0x108+var_EE]
STR             R0, [SP,#0x108+var_108]
CMP             R8, #0x20 ; ' '
BCS             loc_2974A0
ADD             R1, R8, R8,LSL#2
ADD             R0, R1, R8,LSL#7
MOV             R6, #0
ADD             R5, R11, R0,LSL#5
ADD             R4, R5, #0x1000
ADD             R4, R4, #0x64 ; 'd'
ADD             R0, R5, #0x1000
LDR             R1, [R4,#8]
ADD             R0, R0, #0x68 ; 'h'
CMP             R1, R0
BNE             loc_2974A8
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_533330
STR             R6, [R4]
MOV             R4, #0
CMP             R4, #2
ADD             R0, R5, #0x860
BCC             loc_297504
NOP
BL              sub_2FE484
ADD             R0, R4, #4
B               loc_2974EC
DCD off_6C3360
DCD 0xFFFF
DCFS 0.0
DCFS 1.0
DCFS 3.4028e38
DCFS 14.0
DCFS 16.0
DCFS 20.0
DCFS 0.04
DCFS -10.0
DCD 0x3E7
DCD sub_5B93DC
DCD off_6C3624
DCD 0x5D4
DCD off_6CE970
LDR             R2, [R4,#4]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_29748C
ADD             R1, R4, R4,LSL#1
RSB             R1, R1, R4,LSL#8
ADD             R0, R0, R1,LSL#2
MOV             R6, R0
MOV             R1, #1
BL              sub_14C9A4
MOV             R0, R6
NOP
BL              sub_528B1C
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_297494
MOV             R1, #1
ADD             R0, R5, #0x78 ; 'x'
BL              sub_14C9A4
ADD             R0, R5, #0x78 ; 'x'
NOP
BL              sub_528B1C
ADD             R0, R5, #0x400
ADD             R0, R0, #0x6C ; 'l'
BL              sub_528B1C
ADD             R8, R8, #1
CMP             R8, #0x20 ; ' '
BCC             loc_29744C
ADD             R4, R7, #0x21C00
ADD             R0, R7, #0x21C00
ADD             R4, R4, #0x128
ADD             R0, R0, #0x238
MOV             R1, #0
BL              sub_62DB08
LDR             R0, [R4,#0x84]
STR             R0, [R4,#0x88]
ADD             R0, R7, #0x194
BL              sub_5B83E4
MOV             R8, #0
STR             R8, [R7,#0x190]
LDR             R1, [SP,#0x108+var_108]
MOV             R2, #0x90
ADD             R0, R7, #0x100
BL              sub_127EB8
LDR             R0, [R7,#0x18C]
CMP             R0, #0xA
MOVCC           R2, #1
BCC             loc_2975BC
BL              sub_4642B0
ADD             R2, R0, #1
LDR             R1, [SP,#0x108+var_100]
MOV             R3, #1
ADD             R0, R7, #0x194
BL              sub_5B81A0
LDR             R3, [R7,#0x198]
LDR             R2, [R7,#0x18C]
MOV             R4, #1
BIC             R3, R3, #0x60000
ORR             R3, R3, #0x40000
BIC             R1, R3, #0x1800
ORR             R1, R1, #0x1000
STR             R1, [R7,#0x198]
STR             R2, [R7,#0x310]
STR             R4, [R7,#0x1F4]
LDR             R1, [R7,#0x19C]
ADD             R0, R7, #0x194
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_297620
LDR             R1, [R0,#4]
MOV             R2, R1,LSL#19
CMP             R4, R2,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_297624
MOV             R1, #0
LDR             R2, [R0,#4]
TST             R2, #0x80
EORNE           R2, R1, #1
MOVEQ           R2, R1
CMP             R2, #0
BLNE            sub_5B7D3C
ADD             R0, R7, #0x194
NOP
BL              sub_5B7B9C
LDR             R1, [R7,#0x198]
ADD             R0, R7, #0x194
BIC             R1, R1, #0x18000
STR             R1, [R7,#0x198]
LDR             R1, [R7,#0x19C]
MOV             R2, R1,LSL#16
MOV             R2, R2,LSR#24
CMP             R2, #1
BNE             loc_29767C
MOV             R2, R1,LSL#8
MOV             R2, R2,LSR#24
CMP             R2, #0xFF
BEQ             loc_2976C0
BIC             R1, R1, #0xFF0000
BIC             R1, R1, #0xFF00
ORR             R2, R1, #0x100
ORR             R2, R2, #0xFF0000
STR             R2, [R0,#8]
MOV             R1, R2,LSL#16
MOVS            R1, R1,LSR#24
BEQ             loc_2976B4
LDR             R1, [R0,#4]
MOV             R2, R1,LSL#19
CMP             R4, R2,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_2976B8
MOV             R1, #0
NOP
BL              sub_5B7D3C
LDR             R1, [SP,#0x108+var_FC]
MOV             R2, #0
ADD             R0, R7, #0x194
BL              sub_5B8730
MOV             R2, #0
MOV             R1, #1
ADD             R0, R7, #0x194
BL              sub_5B6AD0
VLDR            S0, =0.25
VLDR            S3, =-11.0
VSTR            S0, [R7,#0x1FC]
VLDR            S0, =-7.0
VLDR            S2, =7.0
VSTR            S0, [R7,#0x1AC]
VSTR            S3, [R7,#0x1B0]
VLDR            S1, =9.0
VSTR            S16, [R7,#0x1B4]
VSTR            S2, [R7,#0x1A0]
VSTR            S1, [R7,#0x1A4]
ADD             R0, R7, #0x194
VSTR            S16, [R7,#0x1A8]
BL              sub_5B7B9C
VLDR            S2, =-3.0
VLDR            S0, =-2.0
VSTR            S2, [R7,#0x1C4]
VLDR            S1, =3.0
VSTR            S0, [R7,#0x1C8]
VSTR            S16, [R7,#0x1CC]
VSTR            S1, [R7,#0x1B8]
VSTR            S1, [R7,#0x1BC]
ADD             R0, R7, #0x194
VSTR            S16, [R7,#0x1C0]
BL              sub_5B7B9C
STR             R8, [R7,#0x71C]
LDR             R1, [R7,#0x108]
CMP             R1, #0
BEQ             loc_2977DC
MOV             R2, #0
ADD             R0, R7, #0x328
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R7, #0x328
BL              sub_14C548
STRB            R4, [R7,#0x41A]
LDRB            R1, [R7,#0xF0]
ADD             R0, R7, #0x328
BL              sub_14C450
LDRSB           R2, [R7,#0xF5]
LDRSB           R1, [R7,#0xF8]
ADD             R0, R7, #0x328
BL              sub_14B798
VLDR            S1, =2.0
VLDR            S0, [R7,#0x114]
VSTR            S1, [R7,#0x360]
VSTR            S0, [R7,#0x358]
VSTR            S16, [R7,#0x35C]
ADD             R0, R7, #0x24 ; '$'
VLDR            S1, [R7,#0x2C]
VLDR            S4, [R7,#0x360]
ADD             R2, SP, #0x108+var_6C
VLDM            R0, {S2-S3}
VADD.F32        S1, S1, S4
ADD             R1, SP, #0x108+var_70
ADD             R0, R7, #0x328
VADD.F32        S2, S2, S0
VADD.F32        S0, S3, S16
VSTR            S2, [SP,#0x108+var_70]
VSTM            R2, {S0-S1}
BL              sub_14E984
ADD             R0, R7, #0x21C00
ADD             R0, R0, #0x128
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
MOV             R1, #0
ADD             R0, R10, #4
BL              sub_14C3E8
MOV             R1, #2
ADD             R0, R10, #4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
ADD             R0, R10, #4
BL              sub_14B798
LDR             R5, =off_6CE970
VLDR            S1, [R9,#0x38]
VLDR            S0, [R9,#0x380]
ADD             R4, R10, #4
LDR             R0, [R5]
ADD             R1, R0, #0x100000
ADD             R1, R1, #0xC400
LDR             R0, [R9,#0x37C]
VLDR            S2, [R1,#(loc_10C4EC - 0x10C400)]
ADD             R1, R10, #0x2C ; ','
STR             R0, [R10,#0x28]
VMUL.F32        S1, S2, S1
VSTM            R1, {S0-S1}
LDRB            R0, [R10,#0xF4]
CMP             R0, #2
LDR             R0, [R10,#4]
BEQ             loc_297928
MOV             R2, #1
LDR             R3, [R0,#0x24]
ADD             R1, SP, #0x108+var_70
MOV             R0, R4
BLX             R3
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x194
BL              sub_5B6AD0
LDR             R3, [R4,#0x228]
ADD             R6, SP, #0x108+var_70
ADD             R0, R4, #0x21C
AND             R1, R3, #4
ORR             R1, R3, R1,LSL#3
STR             R1, [R4,#0x228]
LDM             R6, {R1-R3}
STM             R0, {R1-R3}
ADD             R0, R4, #0x328
LDRB            R1, [R4,#0xF0]
BL              sub_14C450
LDRSB           R2, [R4,#0xF5]
LDRSB           R1, [R4,#0xF8]
ADD             R0, R4, #0x328
BL              sub_14B798
VLDR            S2, [R4,#0x24]
VLDR            S5, [R4,#0x358]
VLDR            S1, [R4,#0x28]
VLDR            S4, [R4,#0x35C]
VLDR            S0, [R4,#0x2C]
VLDR            S3, [R4,#0x360]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S3
ADD             R1, SP, #0x108+var_64
ADD             R0, R4, #0x328
VSTR            S2, [SP,#0x108+var_64]
VSTR            S1, [SP,#0x108+var_60]
VSTR            S0, [SP,#0x108+var_5C]
BL              sub_14E984
LDR             R0, [R10,#0x190]
ADD             R4, R10, #4
MOV             R1, #0
CMP             R0, #0
BHI             loc_297A14
MOV             R1, R0
ADD             R0, R4, #0x194
BL              sub_5B7378
LDR             R0, [R4,#0x190]
TST             R0, #1
BNE             loc_297A80
B               loc_297958
LDR             R3, [R0,#0x2C]
MOV             R2, #1
ADD             R1, SP, #0x108+var_70
MOV             R0, R4
BLX             R3
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #0x194
BL              sub_5B6AD0
NOP
NOP
B               loc_297880
ORR             R1, R0, #1
STR             R1, [R4,#0x190]
LDR             R0, [R5]
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
LDR             R1, =0x300B3
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
MOV             R0, #0
MOV             R11, R0
MOV             R7, R0
STR             R0, [SP,#0x108+var_104]
LDR             R0, [R4,#0x1EC]
LDR             R5, [R4,#0x1E8]
MOV             R6, #0x100
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_297A80
LDR             R1, [SP,#0x108+var_104]
MOV             R3, R7
MOV             R2, R11
MOV             R0, R5
STR             R6, [SP,#0x108+var_108]
BL              sub_592DC0
LDR             R0, [R4,#0x1EC]
LDR             R1, [R4,#0x1E8]
ADD             R5, R5, #0x160
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BNE             loc_2979AC
B               loc_297A80
DCFS 0.25
DCFS -7.0
DCFS -11.0
DCFS 7.0
DCFS 9.0
DCFS -3.0
DCFS -2.0
DCFS 3.0
DCFS 2.0
DCD 0x300B3
DCD 0xFFE683CC
ADD             R0, R4, #0x194
BL              sub_5B7378
LDR             R0, [R4,#0x190]
TST             R0, #1
BEQ             loc_297A80
LDR             R0, [R4,#0x1EC]
LDR             R5, [R4,#0x1E8]
MOV             R6, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_297A74
MOV             R1, R6
MOV             R0, R5
BL              sub_592E68
LDR             R0, [R4,#0x1EC]
LDR             R1, [R4,#0x1E8]
ADD             R5, R5, #0x160
ADD             R2, R0, R0,LSL#1
ADD             R0, R2, R0,LSL#3
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BNE             loc_297A48
LDR             R0, [R4,#0x190]
BIC             R0, R0, #1
STR             R0, [R4,#0x190]
LDR             R0, =0x21E4C
STR             R8, [R10]
LDR             R1, [R9,#0x34]
STR             R1, [R0,R10]
ADD             SP, SP, #0xB4
MOV             R0, R10
VPOP            {D8-D11}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
