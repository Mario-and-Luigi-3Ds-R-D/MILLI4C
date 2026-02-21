PUSH            {R4-R11,LR}
ADD             R5, R0, #0x8000
MOV             R4, R0
SUB             SP, SP, #0x1C
LDR             R0, [R5,#0x308]
BL              sub_127FD4
LDR             R0, [R5,#0x308]
BL              sub_128004
LDR             R0, [R4,#0xF20]
ADD             R2, SP, #0x40+var_2C
MOV             R1, #0
STR             R0, [SP,#0x40+var_2C]
ADD             R0, R4, #0x314
BL              sub_12C9C4
LDRB            R1, [R4,#0x370]
MOV             R7, #0
ADD             R0, R4, #0x314
BIC             R1, R1, #1
STRB            R1, [R4,#0x370]
MOV             R3, #0x100
MOV             R2, R7
MOV             R1, #0xB
STRB            R7, [R4,#0x385]
BL              sub_11DCDC
LDR             R8, =flt_6E34B0
VLDR            S2, [R4,#0x24]
VLDR            S1, [R4,#0x28]
ADD             R0, R8, #0x18C
VLDR            S0, [R4,#0x2C]
MOV             R1, #0x3F800000
VLDM            R0, {S3-S5}
ADD             R0, R4, #0x334
ADD             R2, R4, #0x348
STM             R0, {R1,R7}
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S5
STR             R7, [R4,#0x33C]
ADD             R0, R4, #0x314
VSTR            S2, [R4,#0x340]
STR             R7, [R4,#0x344]
STM             R2, {R1,R7}
VSTR            S1, [R4,#0x350]
STR             R7, [R4,#0x354]
STR             R1, [R4,#0x35C]
STR             R7, [R4,#0x358]
VSTR            S0, [R4,#0x360]
LDR             R1, [R5,#0x308]
BL              sub_12CA08
LDR             R9, =off_6CE970
LDR             R10, =0x1210D4
LDR             R1, [R5,#0x30C]
LDR             R11, =0x139014
LDR             R0, [R9]
ADD             R2, R0, R10; loc_1210D4
STR             R2, [SP,#0x40+var_40]
LDR             R2, [R1,#8]
ADD             R3, R0, R11; loc_139014
LDR             R1, [R5,#0x308]
ADD             R0, R4, #0xDF0
BL              sub_29FC48
LDR             R0, [R5,#0x308]
BL              sub_127FD4
LDR             R0, [R5,#0x308]
BL              sub_128004
LDRB            R0, [R4,#0xFF]
CMP             R0, #0
BEQ             loc_2A68C8
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xC
ADD             R0, R4, #0x314
BL              sub_11DCDC
LDR             R0, [R4,#0xF20]
ADD             R2, SP, #0x40+var_38
MOV             R1, #0
STR             R0, [SP,#0x40+var_38]
ADD             R0, R4, #0x314
BL              sub_12C9C4
LDRB            R1, [R4,#0x370]
ADD             R0, R4, #0x334
MOV             R2, #0x3F800000
BIC             R1, R1, #1
STRB            R1, [R4,#0x370]
STRB            R7, [R4,#0x385]
STM             R0, {R2,R7}
ADD             R6, R4, #0x340
STR             R7, [R4,#0x33C]
LDR             R3, [R4,#0x15C]
ADD             R0, R4, #0x314
STM             R6, {R3,R7}
ADD             R3, R4, #0x348
ADD             R6, R4, #0x350
STM             R3, {R2,R7}
LDR             R3, [R4,#0x160]
STM             R6, {R3,R7}
STR             R2, [R4,#0x35C]
STR             R7, [R4,#0x358]
LDR             R1, [R4,#0x164]
STR             R1, [R4,#0x360]
LDR             R1, [R5,#0x308]
BL              sub_12CA08
LDRB            R0, [R4,#0xFE]
CMP             R0, #0
BEQ             loc_2A695C
LDR             R0, [R4,#0xF20]
ADD             R2, SP, #0x40+var_34
MOV             R1, #0
STR             R0, [SP,#0x40+var_34]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x11C
MOV             R6, R0
BL              sub_12C9C4
LDRB            R0, [R6,#0x5C]
MOV             R2, #0x3F800000
ADD             R12, R4, #0x400
BIC             R0, R0, #1
STRB            R0, [R6,#0x5C]
ADD             R0, R4, #0x400
ADD             R0, R0, #0x13C
STRB            R7, [R4,#0x58D]
STM             R0, {R2,R7}
ADD             R12, R12, #0x148
STR             R7, [R4,#0x544]
LDR             R3, [R4,#0x1B4]
MOV             R0, R6
STM             R12, {R3,R7}
ADD             R3, R4, #0x550
ADD             R12, R4, #0x400
STM             R3, {R2,R7}
ADD             R12, R12, #0x158
LDR             R3, [R4,#0x1B8]
STM             R12, {R3,R7}
STR             R2, [R4,#0x564]
STR             R7, [R4,#0x560]
LDR             R1, [R4,#0x1BC]
STR             R1, [R4,#0x568]
LDR             R1, [R5,#0x308]
BL              sub_12CA08
LDRB            R0, [R4,#0xFF]
CMP             R0, #0
BEQ             loc_2A69B4
VLDR            S1, [R4,#0x15C]
ADD             R8, R8, #0x200
VSTR            S1, [SP,#0x40+var_40]
VLDR            S0, [R4,#0x160]
MOV             R3, SP
VSTR            S0, [SP,#0x40+var_3C]
LDR             R0, [R4,#0x164]
STR             R0, [SP,#0x40+var_38]
VLDR            S2, [R8]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x40+var_40]
VLDR            S1, [R8,#(flt_6E36B4 - 0x6E36B0)]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x40+var_3C]
LDR             R0, [R9]
ADD             R2, R0, R10; loc_1210D4
ADD             R1, R0, R11; loc_139014
ADD             R0, R4, #0xDF0
BL              sub_2A02E0
LDR             R1, [R5,#0x308]
ADD             R0, R4, #0xDF0
BL              sub_2A08EC
ADD             SP, SP, #0x1C
POP             {R4-R11,PC}
