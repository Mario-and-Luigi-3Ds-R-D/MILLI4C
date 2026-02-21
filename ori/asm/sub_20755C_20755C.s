PUSH            {R4-R7,LR}
MOV             R4, R2
SUB             SP, SP, #0xC
LDR             R0, [R2,#8]
LDR             R7, =off_6CE970
LDR             R2, [R2,#0xC]
UXTH            R6, R0
UXTH            R1, R0
LDR             R0, [R7]
AND             R5, R2, #0xFF
BL              sub_528EB0
VLDR            S0, [R4,#0x70]
CMP             R5, #0
VSTR            S0, [SP,#0x20+var_20]
VLDR            S1, [R4,#0x74]
VSTR            S1, [SP,#0x20+var_1C]
VLDR            S2, [R4,#0x78]
VSTR            S2, [SP,#0x20+var_18]
BEQ             loc_2075CC
VLDR            S3, [R0,#0x24]
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x20+var_20]
VLDR            S0, [R0,#0x28]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S0, [R0,#0x2C]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x20+var_18]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
LDR             R0, [R7]
MOV             R1, R6
BL              sub_52F480
NOP
NOP
BL              sub_4F18BC
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R7,PC}
