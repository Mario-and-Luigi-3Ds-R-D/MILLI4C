PUSH            {R4-R8,LR}
SXTB            R5, R1
SUB             SP, SP, #0x28
MOV             R6, R0
MOV             R4, R2
MOV             R1, R5
BL              sub_12437C
LDRSH           R0, [R4,#0x10]
LDRSH           R1, [R4,#0x12]
ADD             R3, R5, R5,LSL#2
CMP             R0, #0
MOVEQ           R0, #1
ADD             R3, R3, R5,LSL#3
LDRSH           R2, [R4,#0x14]
CMP             R1, #0
ADD             R3, R6, R3,LSL#2
ADD             R0, R0, R0,LSL#2
MOVEQ           R1, #1
MOV             R12, R0,LSL#5
CMP             R2, #0
ADD             R6, R3, #0x7000
ADD             R0, R1, R1,LSL#2
ADD             R6, R6, #0x260
MOVEQ           R2, #1
MOV             R1, R0,LSL#5
ADD             R0, R2, R2,LSL#2
STR             R12, [R6]
STR             R1, [R6,#4]
MOV             R1, R0,LSL#5
ADD             R7, R3, #0x7000
MOV             R0, #0
STR             R1, [R6,#8]
ADD             R8, R3, #0x7000
STR             R0, [R7,#0x23C]
ADD             R8, R8, #0x250
MOV             R0, SP
BL              sub_128B9C
LDRSH           R0, [R4]
VLDR            S0, =0.01
STR             R0, [SP,#0x40+var_40]
LDRSH           R0, [R4,#2]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x40+var_28]
LDRSH           R0, [R4,#4]
STR             R0, [SP,#0x40+var_3C]
LDRSH           R0, [R4,#6]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x40+var_24]
LDRSH           R0, [R4,#8]
STR             R0, [SP,#0x40+var_38]
LDRSH           R0, [R4,#0xA]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x40+var_34]
LDRSH           R0, [R4,#0xC]
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x40+var_30]
STR             R6, [SP,#0x40+var_2C]
LDRH            R0, [R4,#0xE]
CMP             R0, #0
MOVNE           R0, #1
STRB            R0, [SP,#0x40+var_20]
MOV             R0, SP
BL              sub_128B28
MOV             R4, R0
MOV             R2, #3
MOV             R1, #1
BL              sub_12477C
MOV             R1, R0
STR             R0, [R7,#0x26C]
MOV             R2, R4
MOV             R0, R8
BL              sub_128AB4
MOV             R1, R5
MOV             R0, R8
BL              sub_128BEC
MOV             R1, SP
MOV             R0, R8
BL              sub_128CD0
MOV             R1, #1
MOV             R0, R8
BL              sub_128C44
ADD             SP, SP, #0x28 ; '('
MOV             R0, R4
POP             {R4-R8,PC}
