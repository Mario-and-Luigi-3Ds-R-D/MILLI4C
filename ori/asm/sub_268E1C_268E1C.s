PUSH            {R0-R11,LR}
MOV             R9, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0xB4
LDR             R11, [SP,#0x108+arg_0]
BL              sub_14CB8C
MOV             R7, R0
MOV             R4, R0
LDR             R0, =off_6C3360
MOV             R5, #0
LDR             R6, =0xFFFF
STR             R0, [R4]
STR             R5, [R7,#0x100]
STR             R5, [R7,#0x104]
ADD             R4, R7, #0x100
STR             R5, [R7,#0x108]
STR             R5, [R7,#0x10C]
STRH            R6, [R4,#0x10]
VLDR            S16, =0.0
VLDR            S17, =1.0
ADD             R1, R7, #0x114
STRH            R6, [R4,#0x12]
VLDR            S18, =3.4028e38
VLDR            S23, =14.0
VLDR            S22, =0.04
VLDR            S19, =16.0
VLDR            S20, =20.0
VSTM            R1, {S16-S17}
ADD             R1, R7, #0x12C
VSTR            S16, [R7,#0x11C]
VSTR            S16, [R7,#0x120]
VSTR            S18, [R7,#0x124]
VSTR            S23, [R7,#0x128]
VSTR            S22, [R7,#0x134]
VSTR            S16, [R7,#0x138]
VSTR            S16, [R7,#0x13C]
VSTM            R1, {S19-S20}
STR             R5, [R4,#0x40]
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
ADD             R7, R7, #0x180
LDR             R0, [R0,#8]
VLDR            S21, =-10.0
LDR             R8, =0x3E7
STR             R0, [R4,#0x7C]
ADD             R4, R4, #0x74 ; 't'
ADD             R0, R7, #0x14
STM             R4, {R1,R2}
VSTR            S16, [R7]
VSTR            S16, [R7,#4]
VSTR            S21, [R7,#8]
STR             R5, [R7,#0x10]
STR             R8, [R7,#0xC]
BL              sub_5B8A80
ADD             R0, R0, #0x194
BL              sub_14F198
SUB             R12, R0, #0x328
STR             R5, [R0,#0x3F4]!
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
ADD             R7, R0, #0x21400
LDR             R0, =off_6C3624
ADD             R12, R7, #4
MOV             R4, R7
STR             R0, [R7]
STR             R12, [R7,#0x84]
STR             R12, [R7,#0x88]!
ADD             R7, R7, #4
MOV             R1, #0x84
MOV             R0, R7
BL              sub_2FFE8C
STR             R7, [R7,#0x88]
ADD             R0, R7, #0x84
STR             R7, [R7,#0x84]
STR             R0, [R7,#0x90]
STR             R7, [R7,#0x8C]
SUB             R7, R4, #0x21C00
SUB             R7, R7, #0x128
MOV             R0, #0
SUB             R12, R4, #0x21400
CMP             R0, #0x20 ; ' '
BCS             loc_269238
MOV             R1, R0
ADD             R2, R0, R1,LSL#2
ADD             R1, R2, R1,LSL#7
ADD             R0, R0, #1
ADD             R4, R12, R1,LSL#5
CMP             R0, #0x20 ; ' '
STR             R7, [R4,#4]
BCC             loc_268FE8
LDR             R1, =0x21E48
MOV             R0, #0
STR             R0, [R1,R7]
STRH            R6, [SP,#0x108+var_F0]
ADD             R1, SP, #0x108+var_EC
STR             R0, [SP,#0x108+var_100]
STR             R0, [SP,#0x108+var_FC]
STR             R0, [SP,#0x108+var_F8]
STR             R0, [SP,#0x108+var_F4]
STRH            R6, [SP,#0x108+var_EE]
VSTM            R1, {S16-S17}
ADD             R1, SP, #0x108+var_D4
VSTR            S16, [SP,#0x108+var_E4]
VSTR            S16, [SP,#0x108+var_E0]
VSTR            S18, [SP,#0x108+var_DC]
VSTR            S23, [SP,#0x108+var_D8]
VSTR            S22, [SP,#0x108+var_CC]
VSTR            S16, [SP,#0x108+var_C8]
VSTR            S16, [SP,#0x108+var_C4]
VSTM            R1, {S19-S20}
STR             R0, [SP,#0x108+var_C0]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_B4]
ADD             R0, SP, #0x108+var_BC
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_A8]
ADD             R0, SP, #0x108+var_B0
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_9C]
ADD             R0, SP, #0x108+var_A4
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x108+var_90]
ADD             R0, SP, #0x108+var_98
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0x108+var_100
LDR             R0, [R0,#8]
ADD             R4, SP, #0x108+var_98
ADD             R10, R11, #0x400
STR             R0, [SP,#0x108+var_84]
ADD             R0, SP, #0x108+var_8C
STM             R0, {R1,R2}
LDR             R1, =off_6CE970
VSTR            S16, [SP,#0x108+var_80]
VSTR            S16, [SP,#0x108+var_7C]
VSTR            S21, [SP,#0x108+var_78]
STR             R8, [SP,#0x108+var_74]
LDR             R2, [R1]
LDR             R0, =0x5D4
ADD             R1, R7, #0x21C00
ADD             R2, R2, #0x68 ; 'h'
STM             R3, {R2,R9}
ADD             R9, R7, #0x800
LDR             R2, [R11,#0x450]
MOV             R8, #0
ADD             R9, R9, #0x128
STR             R2, [SP,#0x108+var_E8]
LDR             R2, [R11,#0x44C]
STR             R2, [SP,#0x108+var_E4]
ADD             R2, R11, #0x400
ADD             R2, R2, #0x1C
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
ADD             R2, R11, #0x400
ADD             R2, R2, #0x28 ; '('
ADD             R4, SP, #0x108+var_B0
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
ADD             R2, R10, #0x34 ; '4'
ADD             R4, SP, #0x108+var_8C
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
ADD             R2, R10, #0x40 ; '@'
ADD             R4, SP, #0x108+var_A4
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
STRH            R0, [SP,#0x108+var_EE]
LDR             R0, [R11,#0x110]
STR             R0, [SP,#0x108+var_EC]
LDR             R0, [SP,#0x108+var_2C]
STR             R0, [SP,#0x108+var_F8]
LDR             R0, [SP,#0x108+var_28]
STR             R0, [SP,#0x108+var_F4]
LDR             R0, [R11,#0x114]
STR             R0, [R1,#0x24C]
ADD             R0, SP, #0x108+var_100
STR             R0, [SP,#0x108+var_108]
CMP             R8, #0x20 ; ' '
BCS             loc_269238
ADD             R1, R8, R8,LSL#2
ADD             R1, R1, R8,LSL#7
MOV             R6, #0
ADD             R5, R9, R1,LSL#5
ADD             R4, R5, #0x1000
ADD             R4, R4, #0x64 ; 'd'
ADD             R2, R5, #0x1000
LDR             R0, [R4,#8]
ADD             R2, R2, #0x68 ; 'h'
CMP             R0, R2
BNE             loc_269240
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_533330
NOP
B               loc_269224
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
DCD 0x21E48
DCD 0x5D4
DCD off_6CE970
STR             R6, [R4]
MOV             R4, #0
CMP             R4, #2
ADD             R0, R5, #0x860
BCC             loc_26925C
NOP
BL              sub_2FE484
LDR             R3, [R4,#4]
ADD             R2, R4, #4
STR             R0, [R3,#4]
STR             R3, [R0]
STR             R2, [R4,#4]
STR             R2, [R4,#8]
B               loc_2691DC
ADD             R2, R4, R4,LSL#1
RSB             R1, R2, R4,LSL#8
ADD             R6, R0, R1,LSL#2
MOV             R1, #1
MOV             R0, R6
BL              sub_14C9A4
MOV             R0, R6
NOP
BL              sub_528B1C
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_26922C
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
BCC             loc_26919C
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
BCC             loc_269314
BL              sub_4642B0
ADD             R2, R0, #1
LDR             R1, [SP,#0x108+var_100]
MOV             R3, #1
ADD             R0, R7, #0x194
BL              sub_5B81A0
LDR             R3, [R7,#0x198]
LDR             R0, [R7,#0x18C]
MOV             R4, #1
BIC             R3, R3, #0x60000
ORR             R3, R3, #0x40000
BIC             R1, R3, #0x1800
ORR             R1, R1, #0x1000
STR             R0, [R7,#0x310]
STR             R1, [R7,#0x198]
STR             R4, [R7,#0x1F4]
LDR             R0, [R7,#0x19C]
ADD             R2, R7, #0x194
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#24
BEQ             loc_269378
LDR             R0, [R2,#4]
MOV             R1, R0,LSL#19
CMP             R4, R1,LSR#30
TSTNE           R0, #8
MOVNE           R1, #1
BNE             loc_26937C
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
ADD             R2, R7, #0x194
BIC             R1, R1, #0x18000
STR             R1, [R7,#0x198]
LDR             R0, [R7,#0x19C]
MOV             R1, R0,LSL#16
MOV             R1, R1,LSR#24
CMP             R1, #1
BNE             loc_2693D8
MOV             R1, R0,LSL#8
MOV             R1, R1,LSR#24
CMP             R1, #0xFF
BEQ             loc_26941C
BIC             R0, R0, #0xFF0000
BIC             R0, R0, #0xFF00
ORR             R1, R0, #0x100
ORR             R1, R1, #0xFF0000
STR             R1, [R2,#8]
MOV             R0, R1,LSL#16
MOVS            R0, R0,LSR#24
BEQ             loc_269410
LDR             R0, [R2,#4]
MOV             R1, R0,LSL#19
CMP             R4, R1,LSR#30
TSTNE           R0, #8
MOVNE           R1, #1
BNE             loc_269414
MOV             R1, #0
MOV             R0, R2
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
VLDR            S1, =9.0
VSTR            S0, [R7,#0x1FC]
VSTR            S16, [R7,#0x1B4]
VLDR            S0, =7.0
VSTR            S16, [R7,#0x1A8]
ADD             R1, R7, #0x1A0
VLDR            S2, =-7.0
VLDR            S3, =-11.0
ADD             R0, R7, #0x194
VSTM            R1, {S0-S1}
ADD             R1, R7, #0x1AC
VSTM            R1, {S2-S3}
BL              sub_5B7B9C
VLDR            S1, =-3.0
VLDR            S0, =-2.0
VSTR            S1, [R7,#0x1C4]
VLDR            S2, =3.0
VSTR            S0, [R7,#0x1C8]
VSTR            S16, [R7,#0x1CC]
VSTR            S2, [R7,#0x1B8]
VSTR            S2, [R7,#0x1BC]
ADD             R0, R7, #0x194
VSTR            S16, [R7,#0x1C0]
BL              sub_5B7B9C
STR             R8, [R7,#0x71C]
LDR             R1, [R7,#0x108]
CMP             R1, #0
BEQ             loc_269538
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
VLDR            S1, [R7,#0x24]
VLDR            S3, [R7,#0x28]
VLDR            S2, [R7,#0x2C]
VLDR            S4, [R7,#0x360]
VADD.F32        S1, S1, S0
VADD.F32        S0, S3, S16
VADD.F32        S2, S2, S4
ADD             R1, SP, #0x108+var_70
ADD             R0, R7, #0x328
VSTR            S1, [SP,#0x108+var_70]
VSTR            S0, [SP,#0x108+var_6C]
VSTR            S2, [SP,#0x108+var_68]
BL              sub_14E984
ADD             R0, R7, #0x21C00
ADD             R0, R0, #0x128
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
MOV             R1, #0
MOV             R0, R7
BL              sub_14C3E8
MOV             R1, #2
MOV             R0, R7
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
MOV             R0, R7
BL              sub_14B798
LDR             R5, =off_6CE970
VLDR            S0, [R11,#0x118]
MOV             R4, R7
LDR             R0, [R5]
ADD             R2, R0, #0x100000
ADD             R2, R2, #0xC400
LDRD            R0, R1, [R10,#0x54]
VLDR            S1, [R2,#(loc_10C4EC - 0x10C400)]
STRD            R0, R1, [R4,#0x24]
VMUL.F32        S0, S1, S0
VSTR            S0, [R7,#0x2C]
LDRB            R0, [R7,#0xF0]
CMP             R0, #2
LDR             R0, [R7]
BEQ             loc_26967C
MOV             R2, #1
LDR             R3, [R0,#0x24]
ADD             R1, SP, #0x108+var_70
MOV             R0, R7
BLX             R3
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #0x194
BL              sub_5B6AD0
LDR             R2, [R4,#0x228]
ADD             R6, SP, #0x108+var_70
ADD             R0, R4, #0x21C
AND             R3, R2, #4
ORR             R2, R2, R3,LSL#3
STR             R2, [R4,#0x228]
LDM             R6, {R1-R3}
STM             R0, {R1-R3}
ADD             R0, R4, #0x328
LDRB            R1, [R4,#0xF0]
BL              sub_14C450
LDRSB           R2, [R4,#0xF5]
LDRSB           R1, [R4,#0xF8]
ADD             R0, R4, #0x328
BL              sub_14B798
ADD             R0, R4, #0x24 ; '$'
VLDR            S0, [R4,#0x2C]
VLDR            S3, [R4,#0x360]
VLDR            S4, [R4,#0x35C]
VLDR            S5, [R4,#0x358]
VADD.F32        S0, S0, S3
VLDM            R0, {S1-S2}
ADD             R2, SP, #0x108+var_64
ADD             R1, SP, #0x108+var_64
ADD             R0, R4, #0x328
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x108+var_5C]
VSTM            R2, {S1-S2}
BL              sub_14E984
LDR             R0, [R7,#0x18C]
MOV             R4, R7
MOV             R1, #0
CMP             R0, #0
BHI             loc_269764
MOV             R1, R0
ADD             R0, R4, #0x194
BL              sub_5B7378
LDR             R0, [R4,#0x190]
TST             R0, #1
BNE             loc_2697D0
B               loc_2696AC
LDR             R3, [R0,#0x2C]
MOV             R2, #1
ADD             R1, SP, #0x108+var_70
MOV             R0, R7
BLX             R3
MOV             R2, #0
MOV             R1, #1
ADD             R0, R4, #0x194
BL              sub_5B6AD0
NOP
NOP
B               loc_2695D4
ORR             R1, R0, #1
STR             R1, [R4,#0x190]
LDR             R0, [R5]
LDR             R3, =0xFFE683CC
VMOV.F32        S0, S16
LDR             R1, =0x300B3
MOV             R2, #0
SUB             R0, R0, R3
BL              sub_503414
LDR             R0, [R4,#0x1EC]
LDR             R5, [R4,#0x1E8]
MOV             R11, #0
MOV             R10, R11
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
MOV             R9, R11
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
MOV             R6, #0x100
BEQ             loc_2697D0
MOV             R3, R9
MOV             R2, R10
MOV             R1, R11
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
BNE             loc_2696FC
B               loc_2697D0
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
BEQ             loc_2697D0
LDR             R0, [R4,#0x1EC]
LDR             R5, [R4,#0x1E8]
MOV             R6, #0
ADD             R1, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#3
ADD             R0, R5, R0,LSL#5
CMP             R0, R5
BEQ             loc_2697C4
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
BNE             loc_269798
LDR             R0, [R4,#0x190]
BIC             R0, R0, #1
STR             R0, [R4,#0x190]
LDR             R0, =0x21E50
STR             R8, [R0,R7]
ADD             SP, SP, #0xB4
MOV             R0, R7
VPOP            {D8-D11}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
