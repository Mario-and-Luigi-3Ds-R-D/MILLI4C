PUSH            {R4-R7,LR}
ADD             R2, R1, #0xC
MOV             R4, R0
LDR             R0, [R1,#8]
SUB             SP, SP, #0x14
VLDM            R2, {S2-S6}
ADD             R2, R4, #0x10
VLDM            R1, {S0-S1}
VSTM            R2, {S0-S1}
ADD             R2, R4, #0x1C
STR             R0, [R4,#0x18]
VSTM            R2, {S2-S6}
ADD             R2, R1, #0x20 ; ' '
LDR             R12, [R1,#0x28]!
ADD             R1, R1, #4
VLDM            R2, {S0-S1}
ADD             R2, R4, #0x30 ; '0'
VLDM            R1, {S2-S5}
VSTM            R2, {S0-S1}
ADD             R2, R4, #0x3C ; '<'
STR             R12, [R4,#0x38]
VSTM            R2, {S2-S5}
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x58]
MOV             R1, R12
BLX             R3
LDR             R0, [R4,#0x18]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #7
BL              sub_14C548
LDR             R0, [R4,#0x14]
MOV             R7, #0
STRB            R7, [R0,#0xF6]
LDR             R5, [R4,#0x40]
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_252CA0
BL              sub_533330
STR             R7, [R5]
LDR             R0, [R4,#0x18]
ADD             R3, SP, #0x28+var_20
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x28+var_18]
VMOV            S0, R1
STM             R3, {R1,R2}
MOV             R1, #1
VLDR            S1, [R4,#0x2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_20]
VMOV            S0, R2
VLDR            S1, [R4,#0x30]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_1C]
VMOV            S0, R0
VLDR            S1, [R4,#0x34]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_18]
LDR             R0, [R4,#0x14]
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#0x14]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x28+var_20
BLX             R2
LDR             R0, =off_6CE970
LDR             R5, [R4,#0x14]
LDR             R6, [R0]
BL              sub_4635D8
MOV             R1, #7
MOV             R3, R0
STMEA           SP, {R1,R7}
MOV             R2, R5
ADD             R1, R1, #0x128
MOV             R0, R6
BL              sub_52C764
LDR             R2, [R4,#0x3C]
MOV             R1, R0
MOV             R3, #0x100
STR             R1, [R2]
STRH            R7, [R0,#0xA]
LDRB            R1, [R4,#0x11]
LDR             R0, [R4,#0x14]
MOV             R2, #0
BL              sub_14C430
MOV             R0, #4
STRB            R0, [R4,#0x4C]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
