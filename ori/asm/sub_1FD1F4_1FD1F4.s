PUSH            {R4-R11,LR}
MOV             R6, R2
ADD             R0, R0, #4
MOV             R11, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0xBC
BL              sub_14CB8C
MOV             R5, R0
LDR             R0, =off_6C3360
MOV             R8, #0
LDR             R9, =0xFFFF
STR             R0, [R5]
STR             R8, [R5,#0x100]
STR             R8, [R5,#0x104]
ADD             R4, R5, #0x100
STR             R8, [R5,#0x108]
STR             R8, [R5,#0x10C]
VLDR            S17, =0.0
STRH            R9, [R4,#0x10]
VLDR            S16, =1.0
STRH            R9, [R4,#0x12]
VLDR            S18, =0.04
VSTR            S17, [R5,#0x114]
VSTR            S16, [R5,#0x118]
VLDR            S0, =0.0
VLDR            S1, =0.0
VSTR            S18, [R5,#0x134]
ADD             R1, R5, #0x11C
VLDR            S2, =0.0
VLDR            S3, =0.0
VLDR            S20, =3.4028e38
VLDR            S21, =14.0
VLDR            S22, =16.0
VLDR            S23, =20.0
VSTM            R1, {S0-S1}
ADD             R1, R5, #0x138
VSTM            R1, {S2-S3}
ADD             R1, R5, #0x124
VSTM            R1, {S20-S23}
STR             R8, [R5,#0x140]
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
ADD             R5, R5, #0x180
LDR             R0, [R0,#8]
VLDR            S1, =0.0
VLDR            S0, =0.0
STR             R0, [R4,#0x7C]
ADD             R4, R4, #0x74 ; 't'
LDR             R10, =0x3E7
STM             R4, {R1,R2}
SUB             R7, R5, #0x180
VLDR            S19, =-10.0
VSTR            S1, [R5]
VSTR            S0, [R5,#4]
LDR             R1, =off_6C3340
VSTR            S19, [R5,#8]
STR             R10, [R5,#0xC]
STR             R8, [R5,#0x10]
STR             R1, [R5,#0x14]
LDR             R1, =0x4020
ADD             R4, R5, #0x14
STR             R1, [R5,#0x18]
LDR             R1, =0xFF0100
STR             R1, [R5,#0x1C]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R5, R4, #0xC
STM             R5, {R1-R3}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x18
LDR             R0, [R0,#8]
STR             R0, [R4,#0x20]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x2C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x30 ; '0'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x38]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x3C ; '<'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x44]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x48 ; 'H'
LDR             R0, [R0,#8]
VLDR            S0, =0.0
VLDR            S1, =0.25
STR             R0, [R4,#0x50]
STR             R8, [R4,#0x54]
STM             R3, {R1,R2}
MOV             R0, #1
STR             R8, [R4,#0x58]
STR             R0, [R4,#0x60]
ADD             R1, R4, #0x64 ; 'd'
STR             R8, [R4,#0x5C]
MOV             R0, #7
VSTM            R1, {S0-S1}
ADD             R5, R4, #0x6C ; 'l'
STR             R0, [R4,#0x94]
VSTR            S16, [R4,#0x7C]
VSTR            S16, [R4,#0x80]
VLDR            S2, =0.0
VSTR            S16, [R4,#0x84]
VLDR            S1, =0.0
VLDR            S0, =0.0
VSTR            S2, [R4,#0x6C]
VSTR            S1, [R4,#0x70]
VSTR            S0, [R4,#0x74]
VSTR            S16, [R4,#0x78]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #0x1C
LDR             R0, [R0,#8]
STR             R0, [R5,#0x24]
STM             R3, {R1,R2}
MOV             R2, #0xFFFFFFFF
LDR             R0, [R5,#0x28]
REV             R1, R2
ORR             R0, R0, #0x38 ; '8'
STR             R0, [R5,#0x28]
ADD             R5, R4, #0xCC
STR             R1, [R4,#0xC8]
MOV             R1, #0x9C
MOV             R0, R5
BL              sub_2FFE8C
STR             R5, [R5,#0xA0]
ADD             R2, R5, #0x9C
STR             R5, [R5,#0x9C]
STR             R2, [R5,#0xA8]
MOV             R0, #0xFFFFFFFF
STR             R5, [R5,#0xA4]
STR             R0, [R4,#0x17C]
STR             R8, [R4,#0x178]
STR             R8, [R4,#0x180]
STR             R8, [R4,#0x184]
STR             R8, [R4,#0x188]
ADD             R0, R7, #0x328
STR             R8, [R4,#0x18C]
BL              sub_14F198
SUB             R2, R0, #0x328
STR             R8, [R0,#0x3F4]!
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
ADD             R4, R0, #0x21400
LDR             R0, =off_6C3624
MOV             R5, R4
MOV             R1, #0x84
STR             R0, [R4]
ADD             R0, R4, #4
STR             R0, [R4,#0x84]
STR             R0, [R4,#0x88]!
ADD             R4, R4, #4
MOV             R0, R4
BL              sub_2FFE8C
STR             R4, [R4,#0x88]
ADD             R0, R4, #0x84
STR             R4, [R4,#0x84]
STR             R0, [R4,#0x90]
STR             R4, [R4,#0x8C]
SUB             R4, R5, #0x21C00
SUB             R4, R4, #0x128
MOV             R0, #0
SUB             R2, R5, #0x21400
CMP             R0, #0x20 ; ' '
BCC             loc_1FD544
BL              sub_2FE484
MOV             R1, R0
ADD             R3, R0, R1,LSL#2
ADD             R3, R3, R1,LSL#7
ADD             R0, R0, #1
ADD             R3, R2, R3,LSL#5
CMP             R0, #0x20 ; ' '
STR             R4, [R3,#4]
BCC             loc_1FD538
STRH            R9, [SP,#0x100+var_F0]
STR             R8, [SP,#0x100+var_100]
STR             R8, [SP,#0x100+var_FC]
STR             R8, [SP,#0x100+var_F8]
STR             R8, [SP,#0x100+var_F4]
STRH            R9, [SP,#0x100+var_EE]
VSTR            S17, [SP,#0x100+var_EC]
ADD             R0, SP, #0x100+var_E8
SUB             R4, R4, #4
VSTM            R0, {S16-S17}
ADD             R0, SP, #0x100+var_DC
VSTR            S17, [SP,#0x100+var_E0]
VSTR            S18, [SP,#0x100+var_CC]
VSTR            S17, [SP,#0x100+var_C8]
VSTR            S17, [SP,#0x100+var_C4]
VSTM            R0, {S20-S23}
STR             R8, [SP,#0x100+var_C0]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
B               loc_1FD5FC
DCD off_6C3360
DCD 0xFFFF
DCFS 1.0
DCFS 0.0
DCFS 3.4028e38
DCFS 14.0
DCFS 16.0
DCFS 20.0
DCFS 0.04
DCFS -10.0
DCD 0x3E7
DCD off_6C3340
DCD 0x4020
DCD 0xFF0100
DCFS 0.25
DCD sub_5B93DC
DCD off_6C3624
STR             R0, [SP,#0x100+var_B4]
ADD             R0, SP, #0x100+var_BC
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x100+var_A8]
ADD             R0, SP, #0x100+var_B0
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x100+var_9C]
ADD             R0, SP, #0x100+var_A4
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x100+var_90]
ADD             R0, SP, #0x100+var_98
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
LDR             R5, =off_6CE970
LDR             R7, =off_6CDC90
STR             R0, [SP,#0x100+var_84]
ADD             R0, SP, #0x100+var_8C
STM             R0, {R1,R2}
VSTR            S17, [SP,#0x100+var_80]
VSTR            S17, [SP,#0x100+var_7C]
VSTR            S19, [SP,#0x100+var_78]
STR             R10, [SP,#0x100+var_74]
LDR             R0, [R5]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [SP,#0x100+var_100]
LDR             R0, [R7]
ADD             R0, R0, #0x10
LDR             R0, [R0,#0x30]
STR             R0, [SP,#0x100+var_F8]
LDR             R0, [R7]
ADD             R0, R0, #0x10
LDR             R0, [R0,#0x34]
STR             R0, [SP,#0x100+var_F4]
STR             R11, [SP,#0x100+var_FC]
LDR             R0, [R6,#0x300]
ADD             R7, R6, #0x300
STR             R0, [SP,#0x100+var_6C]
STR             R0, [SP,#0x100+var_E8]
LDR             R0, [R6,#0x2FC]
STR             R0, [SP,#0x100+var_6C]
STR             R0, [SP,#0x100+var_E4]
LDR             R1, [R6,#0x2CC]
ADD             R0, R6, #0x200
STR             R1, [SP,#0x100+var_98]
LDR             R1, [R6,#0x2D0]
STR             R1, [SP,#0x100+var_94]
LDR             R1, [R6,#0x2D4]
STR             R1, [SP,#0x100+var_90]
LDR             R1, [R6,#0x2D8]
STR             R1, [SP,#0x100+var_B0]
LDR             R1, [R6,#0x2DC]
STR             R1, [SP,#0x100+var_AC]
LDR             R1, [R6,#0x2E0]
STR             R1, [SP,#0x100+var_A8]
LDR             R1, [R6,#0x2E4]
STR             R1, [SP,#0x100+var_8C]
LDR             R1, [R6,#0x2E8]
STR             R1, [SP,#0x100+var_88]
LDR             R1, [R0,#0xEC]
STR             R1, [SP,#0x100+var_84]
LDR             R1, [R0,#0xF0]
STR             R1, [SP,#0x100+var_A4]
LDR             R1, [R0,#0xF4]
STR             R1, [SP,#0x100+var_A0]
LDR             R1, =0x5D4
LDR             R0, [R0,#0xF8]
STRH            R1, [SP,#0x100+var_EE]
STR             R0, [SP,#0x100+var_9C]
LDR             R0, [R6,#0x30]
MOV             R1, SP
STR             R0, [SP,#0x100+var_6C]
STR             R0, [SP,#0x100+var_EC]
ADD             R0, R4, #4
BL              sub_5B95A8
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
MOV             R1, #2
ADD             R0, R4, #4
BL              sub_14C450
MOV             R2, #1
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14B798
LDR             R0, [R7,#4]
STR             R0, [SP,#0x100+var_6C]
LDR             R1, [R7,#8]
STR             R1, [SP,#0x100+var_70]
LDR             R1, [R6,#0x38]
LDR             R2, [SP,#0x100+var_70]
STR             R1, [SP,#0x100+var_70]
LDR             R1, [R5]
VLDR            S0, [SP,#0x100+var_70]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xC400
VLDR            S1, [R1,#(loc_10C4EC - 0x10C400)]
ADD             R1, SP, #0x100+var_58
VMUL.F32        S0, S0, S1
STM             R1, {R0,R2}
ADD             R0, R4, #4
VSTR            S0, [SP,#0x100+var_50]
BL              sub_5B9BC0
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_5B922C
STR             R8, [R4]
ADD             SP, SP, #0xBC
MOV             R0, R4
VPOP            {D8-D11}
POP             {R4-R11,PC}
