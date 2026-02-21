PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R6, R0
VPUSH           {D8}
BL              sub_1D3958
CMP             R0, #0
MOVNE           R0, #0
BNE             loc_1D02DC
MOV             R1, R4
MOV             R0, R6
BL              sub_52FB58
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_1D02DC
LDR             R0, =0x19DFE8
LDR             R0, [R6,R0]
BL              sub_1CC8A8
LDRB            R0, [R4,#0x21E]
CMP             R0, #0
BEQ             loc_1D0240
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #3
CMPNE           R0, #2
CMPNE           R0, #1
BEQ             loc_1D0240
MOV             R3, #0
MOV             R2, #4
MOV             R1, R3
MOV             R0, R6
BL              sub_52A660
LDR             R0, =0x10645C
MOV             R5, #0
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
VLDRNE          S16, =0.0
BEQ             loc_1D02C4
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BEQ             loc_1D02B8
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
LDRB            R0, [R0,#0x17F]
CMP             R0, #0
BNE             loc_1D02B8
VMOV.F32        S0, S16
MOVS            R0, R4
SUBNE           R0, R4, #0x1AC
VMOV.F32        S1, S0
BL              sub_4E4124
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D026C
LDR             R2, =off_653FE4
ADD             R0, R6, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
MOV             R0, #0
VPOP            {D8}
POP             {R4-R6,PC}
