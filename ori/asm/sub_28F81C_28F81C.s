PUSH            {R4-R10,LR}
MOV             R6, R1
MOV             R1, #0
MOV             R5, R2
LDR             R4, [SP,#0x20+arg_0]
STR             R1, [R0]
ADD             R1, R0, #4
STR             R1, [R0,#8]
STR             R1, [R0,#4]
STR             R2, [R0,#0xC]!
MOV             R7, R3
MOV             R1, #1
ADD             R0, R0, #4
BL              sub_28B13C
SUB             R0, R0, #0x10
MOV             R8, #0
STRB            R8, [R0,#0xA0]
STRB            R4, [R0,#0xD5]
LDM             R7, {R1-R3}
ADD             R9, R0, #0xD8
ADD             R0, R0, #0xE4
STM             R9, {R1-R3}
BL              sub_14F198
MOV             R9, #1
STR             R6, [R0,#0x3F4]
SUB             R4, R0, #0xE4
STRB            R9, [R0,#0x3F8]
LDR             R0, =off_6CE970
MOV             R3, #0
ADD             R6, R6, #0x14
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
BEQ             loc_28F8BC
LDR             R2, =off_6C0770
STMIB           R0, {R2,R8}
STR             R5, [R0]
STR             R0, [R4,#0x4E0]
ADD             R1, R6, #0x54 ; 'T'
STRB            R9, [R4,#0x2C]
STRB            R9, [R4,#0x2D]
LDM             R1, {R0-R2}
ADD             R3, R4, #0x34 ; '4'
STM             R3, {R0-R2}
ADD             R1, R6, #0x60 ; '`'
ADD             R3, R4, #0x40 ; '@'
LDM             R1, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, R7
LDR             R0, [R5]
LDR             R2, [R0,#0x20]
MOV             R0, R5
BLX             R2
ADD             R1, R5, #0x24 ; '$'
ADD             R0, R4, #0x10
BL              sub_28AFDC
VLDR            S2, [R6,#0x38]
VLDR            S4, [R5,#0x24]
VLDR            S1, [R6,#0x3C]
VLDR            S3, [R5,#0x2C]
VADD.F32        S2, S2, S4
VLDR            S0, =2.0
VADD.F32        S1, S1, S3
ADD             R1, R4, #0xB4
ADD             R3, R4, #0xB0
VSTR            S2, [R4,#0xB0]
VLDR            S2, =0.0
VSTM            R1, {S0-S1}
ADD             R1, R4, #0xA4
VLDR            S0, [R6,#0x44]
VLDR            S4, [R5,#0x2C]
VLDR            S1, [R6,#0x40]
VLDR            S3, [R5,#0x24]
VADD.F32        S0, S0, S4
VADD.F32        S1, S1, S3
VSTR            S0, [R4,#0xAC]
VMOV            R2, S0
VSTM            R1, {S1-S2}
ADD             R1, R4, #0xBC
LDM             R3, {R3,R5,R12}
VMOV            R0, S1
VSTR            S0, [R4,#0xC4]
VSTM            R1, {S1-S2}
ADD             R1, R4, #0xC8
STM             R1, {R3,R5,R12}
VLDR            S0, [R4,#0x34]
VLDR            S3, [R4,#0x40]
VLDR            S1, [R4,#0x3C]
VLDR            S2, [R4,#0x48]
VADD.F32        S0, S0, S3
VADD.F32        S2, S1, S2
VLDR            S1, =0.5
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S2, S1
VMOV            S2, R3
VSUB.F32        S2, S2, S0
VSTR            S2, [R4,#0xC8]
VMOV            S2, R0
MOV             R0, R4
VADD.F32        S0, S2, S0
VSTR            S0, [R4,#0xBC]
VMOV            S0, R12
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0xD0]
VMOV            S0, R2
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0xC4]
STRB            R8, [R4,#0xA3]
STRB            R8, [R4,#0xD4]
POP             {R4-R10,PC}
