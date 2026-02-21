PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R10, #0
VPUSH           {D8-D11}
SUB             SP, SP, #0x88
STRB            R10, [R0],#4
BL              sub_14CB8C
LDR             R1, =off_6C3A54
LDR             R2, =0x4B4
MOV             R3, #0x20 ; ' '
STR             R1, [R0]
ADD             R1, R0, #0x100
STR             R1, [R0,#0x300]!
STR             R1, [R0,#4]!
LDR             R1, =sub_5BFBE8
ADD             R0, R0, #4
BLX             sub_1002F4
ADD             R5, R0, #0x8000
LDR             R0, =off_6C3648
ADD             R5, R5, #0x1680
ADD             R1, R5, #4
STR             R0, [R5]
STR             R1, [R5,#0x84]
ADD             R4, R5, #0x8C
STR             R1, [R5,#0x88]
MOV             R1, #0x84
MOV             R0, R4
BL              sub_2FFE8C
STR             R4, [R4,#0x88]
ADD             R0, R4, #0x84
SUB             R5, R5, #0x9800
STR             R4, [R4,#0x84]
SUB             R5, R5, #0x188
STR             R0, [R4,#0x90]
LDR             R0, =0x9AAC
STR             R4, [R4,#0x8C]
ADD             R4, R5, #0x9000
ADD             R4, R4, #0xAB0
STR             R10, [R0,R5]
STR             R10, [R4]
LDR             R7, =0xFFFF
STR             R10, [R4,#4]
STR             R10, [R4,#8]
STR             R10, [R4,#0xC]
VLDR            S17, =1.0
STRH            R7, [R4,#0x10]
VLDR            S16, =0.0
STRH            R7, [R4,#0x12]
VSTR            S17, [R4,#0x14]
VSTR            S16, [R4,#0x18]
VSTR            S16, [R4,#0x1C]
VSTR            S16, [R4,#0x34]
ADD             R1, R5, #0x9000
VLDR            S18, =3.4028e38
VLDR            S19, =14.0
VLDR            S20, =16.0
VLDR            S21, =20.0
VLDR            S22, =0.04
VSTR            S16, [R4,#0x38]
ADD             R1, R1, #0xAD0
VSTM            R1, {S18-S22}
STR             R10, [R4,#0x3C]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x40 ; '@'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x48]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x4C ; 'L'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x54]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x58 ; 'X'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x60]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x64 ; 'd'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x6C]
STM             R3, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x78]
ADD             R4, R4, #0x70 ; 'p'
ADD             R0, R5, #0x9000
ADD             R0, R0, #0xB30
STM             R4, {R1,R2}
BL              sub_14F198
SUB             R4, R0, #0x9000
SUB             R4, R4, #0xB30
LDR             R0, =off_6C3138
ADD             R4, R4, #0x9C00
ADD             R4, R4, #0x324
MOV             R1, #0x4B0
STM             R4, {R0,R10}
ADD             R0, R4, #8
BL              sub_2FFE8C
LDR             R1, =sub_5B8A80
ADD             R0, R4, #8
MOV             R3, #3
MOV             R2, #0x190
BLX             sub_1002F4
LDR             R1, =sub_5931A8
ADD             R0, R0, #0x4B0
MOV             R3, #2
MOV             R2, #0x104
BLX             sub_1002F4
MOV             R1, #0xFFFFFFFF
LDR             R2, =off_6C0770
REV             R1, R1
STR             R1, [R0,#0x208]!
SUB             R1, R0, #0xA400
ADD             R0, R0, #4
SUB             R1, R1, #0x1E4
STM             R0, {R2,R10}
LDR             R0, =0xA5F0
STRB            R10, [R0,R1]
MOV             R0, #0
CMP             R0, #0x20 ; ' '
ADD             R2, R1, #0x308
BCC             loc_22A4F8
BL              sub_2FE484
LDR             R12, =0x12D
MOV             R3, R0
ADD             R0, R0, #1
CMP             R0, #0x20 ; ' '
MUL             R3, R3, R12
ADD             R2, R2, R3,LSL#2
STR             R1, [R2,#4]
BCC             loc_22A4E8
SUB             R0, R1, #4
ADD             R1, R1, #0xA400
ADD             R1, R1, #0x1F4
ADD             R0, R0, #0xA400
STR             R6, [R1]
MOV             R1, #0xFFFFFFFF
ADD             R0, R0, #0x1FC
REV             R1, R1
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
VSTR            S16, [R0,#0x14]
VSTR            S16, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
SUB             R0, R0, #0x1C
SUB             R4, R0, #0xA400
STRB            R10, [R0,#0x38]
STRH            R7, [SP,#0xC8+var_B8]
STR             R10, [SP,#0xC8+var_C8]
STR             R10, [SP,#0xC8+var_C4]
STR             R10, [SP,#0xC8+var_C0]
STR             R10, [SP,#0xC8+var_BC]
STRH            R7, [SP,#0xC8+var_B6]
VSTR            S17, [SP,#0xC8+var_B4]
VSTR            S16, [SP,#0xC8+var_B0]
VSTR            S16, [SP,#0xC8+var_AC]
VSTR            S16, [SP,#0xC8+var_94]
VSTR            S16, [SP,#0xC8+var_90]
ADD             R0, SP, #0xC8+var_A8
SUB             R4, R4, #0x1FC
VSTM            R0, {S18-S22}
STR             R10, [SP,#0xC8+var_8C]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0xC8+var_80]
ADD             R0, SP, #0xC8+var_88
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0xC8+var_74]
ADD             R0, SP, #0xC8+var_7C
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0xC8+var_68]
ADD             R0, SP, #0xC8+var_70
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0xC8+var_5C]
ADD             R0, SP, #0xC8+var_64
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, SP, #0xC8+var_58
LDR             R0, [R0,#8]
LDR             R5, =off_6CDA80
STR             R0, [SP,#0xC8+var_50]
LDR             R0, =off_6CE970
STM             R3, {R1,R2}
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [SP,#0xC8+var_C8]
LDR             R0, [R5]
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0,#0x40]
LDR             R1, =0x300FA
ADD             R8, SP, #0xC8+var_64
LDR             R2, =0x5D4
STRD            R0, R1, [SP,#0xC8+var_C4]
LDR             R0, [R5]
LDR             R1, =0x126F4
LDR             R1, [R1,R0]
LDR             R0, [R0,#0x44]
STR             R0, [SP,#0xC8+var_BC]
LDR             R3, [R1,#0x420]
STR             R3, [SP,#0xC8+var_B4]
LDR             R0, [R1,#0x41C]
STR             R0, [SP,#0xC8+var_B0]
ADD             R0, R1, #0x3EC
LDM             R0, {R0,R3,R12}
STM             R8, {R0,R3,R12}
ADD             R0, R1, #0x3F8
ADD             R8, SP, #0xC8+var_7C
LDM             R0, {R0,R3,R12}
STM             R8, {R0,R3,R12}
ADD             R0, R1, #0x400
ADD             R0, R0, #4
ADD             R8, SP, #0xC8+var_58
LDM             R0, {R0,R3,R12}
STM             R8, {R0,R3,R12}
ADD             R0, R1, #0x410
LDR             R1, [R1,#0x418]
LDM             R0, {R0,R3}
ADD             R8, SP, #0xC8+var_70
STR             R1, [SP,#0xC8+var_68]
MOV             R1, SP
STM             R8, {R0,R3}
ADD             R0, R4, #4
STRH            R2, [SP,#0xC8+var_B6]
BL              sub_5C01F4
MOV             R1, #2
ADD             R0, R4, #4
BL              sub_14C450
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
LDR             R0, [R5]
ADD             R5, SP, #0xC8+var_48
ADD             R1, SP, #0xC8+var_4C
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R3, R0, #0x400
LDR             R2, [R0,#4]
LDR             R0, [R0,#8]
LDR             R3, [R3,#0x2C]
STR             R2, [SP,#0xC8+var_4C]
STM             R5, {R0,R3}
ADD             R0, R4, #4
BL              sub_5C1224
VMOV            S0, R6
VLDR            S1, =60.0
ADD             R0, R4, #0x9800
LDR             R2, =0x88888889
MOV             R12, #0x64 ; 'd'
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x330]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UMULL           R5, R3, R2, R0
MUL             R0, R0, R12
UMULL           R0, R12, R2, R0
B               loc_22A7B8
DCD off_6C3A54
DCD 0x4B4
DCD sub_5BFBE8
DCD off_6C3648
DCD 0x9AAC
DCD 0xFFFF
DCFS 0.0
DCFS 1.0
DCFS 3.4028e38
DCFS 14.0
DCFS 16.0
DCFS 20.0
DCFS 0.04
DCD off_6C3138
DCD sub_5B8A80
DCD sub_5931A8
DCD off_6C0770
DCD 0xA5F0
DCD 0x12D
DCD off_6CDA80
DCD off_6CE970
DCD 0x300FA
DCD 0x126F4
DCD 0x5D4
DCFS 60.0
DCD 0x88888889
MOV             R7, R3,LSR#5
ADD             R5, R4, #0x9000
UMULL           R2, R0, R2, R7
ADD             R5, R5, #0xF30
MOV             R9, R12,LSR#5
MOV             R1, #1
MOV             R8, R0,LSR#5
ADD             R0, R4, #0xA000
STR             R8, [R5,#0x178]
VSTR            S16, [R5,#0x64]
ADD             R0, R0, #0x98
BL              sub_62D444
MOV             R6, R5
LDR             R1, [R5,#0x168]
MOV             R2, R8
MOV             R0, R6
BL              sub_5B71F4
MOV             R0, R5
NOP
BL              sub_5B7B9C
STR             R7, [R6,#0x308]
ADD             R5, R6, #0x190
VSTR            S16, [R6,#0x1F4]
MOV             R1, #1
ADD             R0, R6, #0x2F8
BL              sub_62D444
LDR             R1, [R5,#0x168]
MOV             R2, R7
MOV             R0, R5
BL              sub_5B71F4
MOV             R0, R5
NOP
BL              sub_5B7B9C
ADD             R5, R6, #0x320
MOV             R6, R9
STR             R9, [R5,#0x178]
VSTR            S16, [R5,#0x64]
MOV             R1, #1
ADD             R0, R5, #0x168
BL              sub_62D444
LDR             R1, [R5,#0x168]
MOV             R2, R6
MOV             R0, R5
BL              sub_5B71F4
MOV             R0, R5
NOP
BL              sub_5B7B9C
MOV             R2, #1
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14B798
LDR             R0, =0xA5F4
MOV             R1, #1
STRB            R1, [R0,R4]
LDR             R1, =0xA5F0
ADD             R0, R4, #4
LDR             R2, [R1,R4]
CMP             R2, #0
BEQ             loc_22A8C8
ADD             R5, R0, #0xA400
ADD             R5, R5, #0x1E8
MOV             R1, #0
MOV             R0, R2
BL              sub_1586A8
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R10, [R0,#0x64]
STRNE           R10, [R5,#4]
ADD             SP, SP, #0x88
MOV             R0, R4
VPOP            {D8-D11}
POP             {R4-R10,PC}
