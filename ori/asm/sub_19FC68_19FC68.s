PUSH            {R4-R6,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
ADD             R0, R0, #8
BL              sub_61E74C
ADD             R0, R4, #0x18
BL              sub_61E74C
LDRB            R0, [R4,#0x28]
CMP             R0, #0
BEQ             loc_19FCE0
CMP             R0, #1
BNE             loc_19FCD8
LDR             R0, [R4,#4]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
LDRBEQ          R0, [R4,#0x10]
CMPEQ           R0, #0
BNE             loc_19FCD8
LDRB            R0, [R4,#0x20]
CMP             R0, #0
BNE             loc_19FCD8
LDR             R0, [R4,#4]
MOV             R1, #0
STRB            R1, [R0,#0xF2]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x3F4
BL              sub_61E3C4
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_19FCD8
LDR             R6, =off_6CE388
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
MOV             R5, R0
LDR             R0, [R6]
BL              sub_5C6660
VLDR            S0, [R5,#0x3A0]
VLDR            S3, [R0,#8]
VLDR            S4, [R5,#0x39C]
VLDR            S5, [R5,#0x398]
VADD.F32        S0, S3, S0
VLDM            R0, {S1-S2}
MOV             R2, SP
MOV             R1, #0
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x20+var_18]
VSTMEA          SP, {S1-S2}
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x3A8]
ADD             R0, R0, #0x1DC
BL              sub_5A2298
MOV             R0, #1
STRB            R0, [R4,#0x28]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
