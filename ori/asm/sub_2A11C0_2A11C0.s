PUSH            {R4,R5,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x272]
SUB             SP, SP, #0xC
CMP             R0, #0
BNE             loc_2A1274
LDR             R5, =off_6CDFD8
LDR             R0, [R5]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC0]
ADD             R0, R4, #0x184
BL              sub_5A2484
LDR             R0, [R5]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC0]
ADD             R0, R4, #0x22C
BL              sub_5A176C
LDR             R0, [R4,#0x7C]
CMP             R0, #0
BEQ             loc_2A121C
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R5]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC0]
ADD             R0, R4, #0x80
BL              sub_14EDD8
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_2A1274
MOV             R1, SP
MOV             R0, R4
BL              sub_5CE2A4
VLDR            S1, =0.0
VLDR            S0, [SP,#0x18+var_14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [SP,#0x18+var_14]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
