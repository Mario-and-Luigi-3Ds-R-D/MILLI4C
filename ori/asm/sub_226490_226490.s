PUSH            {R4-R10,LR}
MOV             R6, R0
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x104
SUB             SP, SP, #0x10
MOV             R1, #0
STR             R1, [R0]
LDR             R1, =0x128F0
ADD             R7, R6, #0x12400
MOV             R10, #1
ADD             R7, R7, #0x2FC
ORR             R0, R1, R1,ASR#9
LDR             R4, [R1,R6]
LDR             R5, [R0,R6]
CMP             R4, R5
ADDNE           R9, R6, #0x12400
ADDNE           R9, R9, #0x2F4
BEQ             loc_226554
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_226548
LDR             R0, [R4]
MOV             R8, R0
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, SP
BLX             R2
LDR             R0, [R9]
VLDR            S0, [SP,#0x30+var_28]
VLDR            S1, [R0,#0x3A8]
MOV             R0, R8
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_28]
BL              sub_5C95D4
CMP             R0, #0
NOP
BNE             loc_226548
LDR             R0, [R7]
VLDR            S0, [SP,#0x30+var_28]
VLDR            S1, [R0,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
STRBGT          R10, [R8,#0x415]
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2264D8
ADD             R0, R6, #0x12400
ADD             R6, R6, #0x12400
ADD             R0, R0, #0x3F8
ADD             R6, R6, #0x3FC
LDR             R4, [R0]
LDR             R5, [R6]
CMP             R4, R5
BEQ             loc_2265B8
LDR             R0, [R4]
LDRB            R1, [R0,#0x1C]
CMP             R1, #0
BNE             loc_2265AC
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
LDR             R1, [R7]
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
LDRGT           R0, [R4]
STRBGT          R10, [R0,#0x1D]
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_226574
ADD             SP, SP, #0x10
POP             {R4-R10,PC}
