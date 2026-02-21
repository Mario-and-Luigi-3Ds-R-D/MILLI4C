PUSH            {R4-R11,LR}
MOV             R5, R2
ADD             R0, R0, #4
MOV             R9, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0xD4
BL              sub_14CB8C
MOV             R6, R0
LDR             R0, =off_6C3360
MOV             R11, #0
LDR             R8, =0xFFFF
STR             R0, [R6]
STR             R11, [R6,#0x100]
STR             R11, [R6,#0x104]
ADD             R4, R6, #0x100
STR             R11, [R6,#0x108]
STR             R11, [R6,#0x10C]
STRH            R8, [R4,#0x10]
VLDR            S16, =0.0
VLDR            S17, =1.0
ADD             R1, R6, #0x114
STRH            R8, [R4,#0x12]
VLDR            S18, =3.4028e38
VLDR            S19, =14.0
VLDR            S21, =16.0
VLDR            S22, =20.0
VLDR            S23, =0.04
VSTM            R1, {S16-S17}
ADD             R1, R6, #0x124
VSTR            S16, [R6,#0x11C]
VSTR            S16, [R6,#0x120]
VSTR            S16, [R6,#0x138]
VSTR            S16, [R6,#0x13C]
VSTM            R1, {S18-S19}
ADD             R1, R6, #0x12C
VSTM            R1, {S21-S23}
STR             R11, [R4,#0x40]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x44 ; 'D'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x4C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x50 ; 'P'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x58]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x5C ; '\'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x64]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x68 ; 'h'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x70]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R6, R6, #0x180
LDR             R0, [R0,#8]
LDR             R7, =0x3E7
VLDR            S20, =-10.0
STR             R0, [R4,#0x7C]
ADD             R4, R4, #0x74 ; 't'
ADD             R0, R6, #0x14
STM             R4, {R1,R2}
VSTR            S16, [R6]
VSTR            S16, [R6,#4]
VSTR            S20, [R6,#8]
STR             R7, [R6,#0xC]
STR             R11, [R6,#0x10]
BL              sub_5B8A80
ADD             R0, R0, #0x194
BL              sub_14F198
SUB             R2, R0, #0x328
STR             R11, [R0,#0x3F4]!
ADD             R0, R0, #4
MOV             R1, #0x21400
STR             R0, [R0,#0x200]
STR             R0, [R0,#0x204]
ADD             R0, R2, #0x800
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
ADD             R2, R0, #4
STR             R1, [R0]
MOV             R6, R0
STR             R2, [R0,#0x84]
STR             R2, [R0,#0x88]!
ADD             R0, R0, #4
MOV             R4, R0
MOV             R1, #0x84
BL              sub_2FFE8C
STR             R4, [R4,#0x88]
ADD             R1, R4, #0x84
STR             R4, [R4,#0x84]
STR             R1, [R4,#0x90]
SUB             R0, R6, #0x21C00
SUB             R0, R0, #0x128
MOV             R1, #0
SUB             R2, R6, #0x21400
STR             R4, [R4,#0x8C]
CMP             R1, #0x20 ; ' '
BCS             loc_2295A0
MOV             R3, R1
ADD             R12, R1, R3,LSL#2
ADD             R12, R12, R3,LSL#7
ADD             R1, R1, #1
ADD             R3, R2, R12,LSL#5
CMP             R1, #0x20 ; ' '
STR             R0, [R3,#4]
BCC             loc_229318
MOV             R1, #0xFFFFFFFF
ADD             R0, R0, #0x21C00
REV             R2, R1
ADD             R0, R0, #0x248
STR             R2, [R0]
STR             R2, [R0,#4]
STR             R2, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
VSTR            S16, [R0,#0x14]
VSTR            S16, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
SUB             R0, R0, #0x1C
ADD             R1, SP, #0x118+var_F4
STRB            R11, [R0,#0x38]
STRH            R8, [SP,#0x118+var_F8]
STR             R11, [SP,#0x118+var_108]
STR             R11, [SP,#0x118+var_104]
STR             R11, [SP,#0x118+var_100]
STR             R11, [SP,#0x118+var_FC]
STRH            R8, [SP,#0x118+var_F6]
SUB             R10, R0, #0x21C00
VSTM            R1, {S16-S17}
ADD             R1, SP, #0x118+var_E4
VSTR            S16, [SP,#0x118+var_EC]
VSTR            S16, [SP,#0x118+var_E8]
VSTR            S16, [SP,#0x118+var_D0]
VSTR            S16, [SP,#0x118+var_CC]
SUB             R10, R10, #0x24C
VSTM            R1, {S18-S19}
ADD             R1, SP, #0x118+var_DC
VSTM            R1, {S21-S23}
STR             R11, [SP,#0x118+var_C8]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x118+var_C4
LDR             R0, [R0,#8]
STR             R0, [SP,#0x118+var_BC]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x118+var_B8
LDR             R0, [R0,#8]
STR             R0, [SP,#0x118+var_B0]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x118+var_AC
LDR             R0, [R0,#8]
STR             R0, [SP,#0x118+var_A4]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x118+var_A0
LDR             R0, [R0,#8]
STR             R0, [SP,#0x118+var_98]
STM             R3, {R1,R2}
BL              sub_4635D8
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
STR             R1, [SP,#0x118+var_90]
STR             R2, [SP,#0x118+var_94]
STR             R0, [SP,#0x118+var_8C]
LDR             R0, =off_6CE970
VSTR            S16, [SP,#0x118+var_88]
VSTR            S16, [SP,#0x118+var_84]
VSTR            S20, [SP,#0x118+var_80]
STR             R7, [SP,#0x118+var_7C]
LDR             R0, [R0]
ADD             R1, SP, #0x118+var_108
ADD             R0, R0, #0x68 ; 'h'
STM             R1, {R0,R9}
LDR             R0, =off_6CDA80
LDR             R0, [R0]
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0,#0x40]
STR             R0, [SP,#0x118+var_100]
ADD             R0, R5, #0x400
STR             R0, [SP,#0x118+var_64]
LDR             R0, [R5,#0x420]
ADD             R2, R5, #0x3EC
ADD             R4, SP, #0x118+var_A0
STR             R0, [SP,#0x118+var_F0]
LDR             R0, [SP,#0x118+var_64]
LDR             R1, =0x5D4
ADD             R9, R10, #0x800
ADD             R7, R10, #4
LDR             R0, [R0,#0x1C]
MOV             R8, #0
ADD             R9, R9, #0x12C
STR             R0, [SP,#0x118+var_EC]
LDM             R2, {R0,R2,R3}
STM             R4, {R0,R2,R3}
ADD             R2, R5, #0x3F8
ADD             R4, SP, #0x118+var_B8
LDM             R2, {R0,R2,R3}
STM             R4, {R0,R2,R3}
LDR             R0, [SP,#0x118+var_64]
LDRD            R2, R3, [R0,#4]
LDR             R0, [R0,#0xC]
STR             R0, [SP,#0x118+var_8C]
STRD            R2, R3, [SP,#0x118+var_94]
LDR             R0, [SP,#0x118+var_64]
LDRD            R2, R3, [R0,#0x10]
LDR             R0, [R0,#0x18]
STR             R0, [SP,#0x118+var_A4]
STRD            R2, R3, [SP,#0x118+var_AC]
STRH            R1, [SP,#0x118+var_F6]
LDR             R0, [R5,#0x2E4]
STR             R0, [SP,#0x118+var_F4]
ADD             R0, SP, #0x118+var_108
STR             R0, [SP,#0x118+var_110]
CMP             R8, #0x20 ; ' '
BCS             loc_2295A0
ADD             R1, R8, R8,LSL#2
ADD             R1, R1, R8,LSL#7
MOV             R6, #0
ADD             R5, R9, R1,LSL#5
ADD             R4, R5, #0x1000
ADD             R0, R5, #0x1000
ADD             R4, R4, #0x64 ; 'd'
ADD             R0, R0, #0x68 ; 'h'
B               loc_229574
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
DCD off_6CE970
DCD off_6CDA80
DCD 0x5D4
LDR             R1, [R4,#8]
CMP             R1, R0
BNE             loc_2295A8
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_533330
STR             R6, [R4]
MOV             R4, #0
CMP             R4, #2
ADD             R1, R5, #0x860
BCC             loc_2295C4
NOP
BL              sub_2FE484
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_22958C
ADD             R2, R4, R4,LSL#1
RSB             R0, R2, R4,LSL#8
ADD             R0, R1, R0,LSL#2
MOV             R6, R0
MOV             R1, #1
BL              sub_14C9A4
MOV             R0, R6
NOP
BL              sub_528B1C
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_229594
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
BCC             loc_229508
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
STR             R11, [R7,#0x190]
LDR             R1, [SP,#0x118+var_110]
MOV             R2, #0x90
ADD             R0, R7, #0x100
BL              sub_127EB8
LDR             R0, [R7,#0x18C]
CMP             R0, #0xA
MOVCC           R2, #1
BCC             loc_229678
BL              sub_4642B0
ADD             R2, R0, #1
LDR             R1, [SP,#0x118+var_108]
MOV             R3, #1
ADD             R0, R7, #0x194
BL              sub_5B81A0
LDR             R1, [R7,#0x18C]
LDR             R3, [R7,#0x198]
MOV             R0, #1
STR             R1, [R7,#0x310]
BIC             R3, R3, #0x60000
ORR             R3, R3, #0x40000
BIC             R1, R3, #0x1800
ORR             R1, R1, #0x1000
STR             R0, [R7,#0x1F4]
STR             R1, [R7,#0x198]
LDR             R0, [R7,#0x19C]
ADD             R2, R7, #0x194
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#24
BEQ             loc_2296E0
LDR             R0, [R2,#4]
MOV             R1, #1
MOV             R3, R0,LSL#19
CMP             R1, R3,LSR#30
TSTNE           R0, #8
MOVNE           R1, #1
BNE             loc_2296E4
MOV             R1, #0
LDR             R0, [R2,#4]
TST             R0, #0x80
EORNE           R0, R1, #1
MOVEQ           R0, R1
CMP             R0, #0
MOVNE           R0, R2
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
BNE             loc_229740
MOV             R2, R1,LSL#8
MOV             R2, R2,LSR#24
CMP             R2, #0xFF
BEQ             loc_229788
BIC             R1, R1, #0xFF0000
BIC             R1, R1, #0xFF00
ORR             R1, R1, #0xFF0000
ORR             R1, R1, #0x100
STR             R1, [R0,#8]
MOV             R1, R1,LSL#16
MOV             R2, #1
MOVS            R1, R1,LSR#24
BEQ             loc_22977C
LDR             R1, [R0,#4]
MOV             R3, R1,LSL#19
CMP             R2, R3,LSR#30
TSTNE           R1, #8
MOVNE           R1, #1
BNE             loc_229780
MOV             R1, #0
NOP
BL              sub_5B7D3C
LDR             R0, [R7,#0x1EC]
LDR             R5, [R7,#0x1E8]
LDR             R8, [SP,#0x118+var_104]
ADD             R4, R7, #0x194
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
MOV             R9, #0
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2297D8
MOV             R0, R5
BL              sub_592EDC
LDR             R0, [R4,#0x58]
LDR             R2, [R4,#0x54]
ADD             R5, R5, #0x160
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R2, R0,LSL#5
CMP             R0, R5
BNE             loc_2297B0
LDR             R1, [R4,#4]
CMP             R8, #0
BIC             R1, R1, #2
STR             R1, [R4,#4]
BEQ             loc_2298B4
LDR             R0, [R4,#0x58]
LDR             R5, [R4,#0x54]
MOV             R6, #1
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_229890
MOV             R1, #1
MOV             R0, R8
BL              sub_5F0474
MOV             R11, R0
MOV             R0, R8
ADD             R0, R0, #0xA0
STR             R0, [SP,#0x118+var_70]
MOV             R1, #0
MOV             R0, R8
BL              sub_5F0474
MOV             R3, #0x100
MOV             R2, #0
STR             R9, [SP,#0x118+var_118]
STRD            R2, R3, [SP,#0x118+var_114]
MOV             R1, R0
LDR             R2, [SP,#0x118+var_70]
MOV             R3, R11
MOV             R0, R5
BL              sub_1137FC
ADD             R1, R4, #0x54 ; 'T'
LDR             R0, [R5,#4]
LDM             R1, {R1,R2}
ADD             R5, R5, #0x160
CMP             R0, #0
MOVNE           R0, #1
AND             R6, R6, R0
ADD             R0, R2, R2,LSL#1
ADD             R0, R0, R2,LSL#3
ADD             R0, R1, R0,LSL#5
CMP             R0, R5
BNE             loc_22980C
CMP             R6, #0
BEQ             loc_229AA0
LDR             R0, [R4,#4]
CMP             R6, #0
ORR             R0, R0, #2
STR             R0, [R4,#4]
BEQ             loc_2298B4
AND             R0, R0, #0x80
MOV             R1, R0,LSR#7
MOV             R0, R4
BL              sub_5B7D3C
LDR             R0, [R4,#8]
ADD             R1, R7, #0x194
BIC             R0, R0, #0xFF
ORR             R0, R0, R9
STR             R0, [R4,#8]
ADD             R0, R7, #0x1E8
LDM             R0, {R0,R2}
ADD             R3, R2, R2,LSL#1
ADD             R2, R3, R2,LSL#3
ADD             R2, R0, R2,LSL#5
CMP             R2, R0
MOVNE           R12, #1
BEQ             loc_229910
MOV             R2, R0
ADD             R3, R1, #0x54 ; 'T'
STRB            R12, [R2,#0x6F]
LDM             R3, {R3,R4}
ADD             R0, R0, #0x160
ADD             R2, R4, R4,LSL#1
ADD             R2, R2, R4,LSL#3
ADD             R2, R3, R2,LSL#5
CMP             R2, R0
BNE             loc_2298E8
LDR             R0, [R1,#4]
VLDR            S0, =0.25
VLDR            S3, =-7.0
ORR             R0, R0, #0x10
STR             R0, [R1,#4]
VSTR            S0, [R7,#0x1FC]
VLDR            S0, =-11.0
VSTR            S3, [R7,#0x1AC]
VLDR            S2, =7.0
VSTR            S0, [R7,#0x1B0]
VLDR            S1, =9.0
VSTR            S16, [R7,#0x1B4]
VSTR            S2, [R7,#0x1A0]
VSTR            S1, [R7,#0x1A4]
ADD             R0, R7, #0x194
VSTR            S16, [R7,#0x1A8]
BL              sub_5B7B9C
VLDR            S0, =3.0
VSTR            S16, [R7,#0x1CC]
VSTR            S0, [R7,#0x1B8]
VSTR            S0, [R7,#0x1BC]
VLDR            S1, =-3.0
VLDR            S2, =-2.0
VSTR            S16, [R7,#0x1C0]
ADD             R1, R7, #0x1C4
ADD             R0, R7, #0x194
VSTM            R1, {S1-S2}
BL              sub_5B7B9C
MOV             R4, #0
STR             R4, [R7,#0x71C]
LDR             R1, [R7,#0x108]
CMP             R1, #0
BEQ             loc_229A20
MOV             R2, #0
ADD             R0, R7, #0x328
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
ADD             R0, R7, #0x328
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R7,#0x41A]
LDRB            R1, [R7,#0xF0]
ADD             R0, R7, #0x328
BL              sub_14C450
LDRSB           R2, [R7,#0xF5]
LDRSB           R1, [R7,#0xF8]
ADD             R0, R7, #0x328
BL              sub_14B798
VLDR            S0, =2.0
VLDR            S1, [R7,#0x114]
VSTR            S0, [R7,#0x360]
VSTR            S1, [R7,#0x358]
VSTR            S16, [R7,#0x35C]
VLDR            S3, [R7,#0x24]
VLDR            S0, [R7,#0x28]
VLDR            S2, [R7,#0x2C]
VLDR            S4, [R7,#0x360]
VADD.F32        S1, S3, S1
VADD.F32        S0, S0, S16
VADD.F32        S2, S2, S4
MOV             R1, SP
ADD             R0, R7, #0x328
VSTR            S1, [SP,#0x118+var_118]
VSTR            S0, [SP,#0x118+var_114]
VSTR            S2, [SP,#0x118+var_110]
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
LDR             R2, [SP,#0x118+var_64]
LDR             R3, [SP,#0x118+var_64]
ADD             R1, SP, #0x118+var_60
LDR             R0, [R2,#0x24]
LDR             R2, [R2,#0x28]
LDR             R3, [R3,#0x2C]
STM             R1, {R0,R2,R3}
ADD             R0, R10, #4
BL              sub_5B9BC0
MOV             R1, #0
ADD             R0, R10, #4
BL              sub_5B922C
STR             R4, [R10]
ADD             SP, SP, #0xD4
MOV             R0, R10
VPOP            {D8-D11}
POP             {R4-R11,PC}
LDR             R1, [R4,#4]
BIC             R1, R1, #2
STR             R1, [R4,#4]
B               loc_2298B4
