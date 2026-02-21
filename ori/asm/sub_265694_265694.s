PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
LDRB            R0, [R0,#0x70]
LDR             R6, =off_6CE970
CMP             R0, #1
BEQ             loc_265760
CMP             R0, #2
MOV             R8, #7
MOV             R7, #4
BEQ             loc_2657C4
CMP             R0, #3
BNE             loc_2658A4
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_5CBD1C
CMP             R0, #0
BEQ             loc_2658A4
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
LDRB            R0, [R0,#0xC70]
CMP             R0, #1
LDR             R0, [R4,#0x58]
MOVEQ           R5, #1
MOVNE           R5, #0
BL              sub_5CC040
TST             R0, R5
LDR             R0, [R4,#4]
BEQ             loc_2658F4
ADD             R1, R0, #0x12400
LDR             R0, =0xFFE683CC
LDR             R12, [R6]
LDR             R2, =0x30167
ADD             R1, R1, #0x374
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
LDR             R0, [R4,#0x74]
MOV             R1, SP
BL              sub_5CBF98
LDR             R0, [R4,#4]
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25EDA0
B               loc_2658DC
LDR             R0, [R6]
VLDR            S1, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, [R4,#0x88]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x88]
LDR             R0, [R4,#0x58]
BL              sub_5CBFE0
CMP             R0, #0
NOP
BEQ             loc_2658A4
VLDR            S1, [R4,#0x84]
VLDR            S0, [R4,#0x88]
LDR             R0, [R4,#0x58]
ADD             R1, R4, #0x8C
VSUB.F32        S0, S1, S0
BL              sub_5A2058
MOV             R0, #2
NOP
B               loc_2658D0
LDR             R0, [R4,#0x58]
BL              sub_5CC00C
CMP             R0, #0
NOP
BEQ             loc_2657F0
LDR             R0, [R6]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
CMP             R0, #1
BEQ             loc_2658AC
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_5CBE38
CMP             R0, #0
NOP
BEQ             loc_2658A4
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25E73C
LDR             R0, [R4,#0x74]
MOV             R1, SP
BL              sub_5CBF98
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
BL              sub_2641BC
LDR             R0, [R4,#0x58]
NOP
BL              sub_267E38
LDR             R0, [R4,#4]
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25EB48
LDR             R0, [R4,#4]
NOP
BL              sub_5CBE68
CMP             R0, #0
NOP
BEQ             loc_2658DC
LDR             R0, [R4,#0x58]
MOV             R1, #1
BL              sub_267C0C
LDR             R0, [R4,#0x64]
NOP
BL              sub_267438
STRB            R8, [R4,#0x70]
LDR             R0, [R4,#4]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xDC]
STR             R0, [R4,#0x9C]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25E73C
MOV             R1, R0
LDR             R0, [R4,#0x58]
BL              sub_267B68
MOV             R0, #3
STRB            R0, [R4,#0x70]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
LDR             R0, [R4,#0x64]
MOV             R1, SP
BL              sub_267550
STRB            R7, [R4,#0x70]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_5CBE38
BICS            R0, R0, R5
NOP
BEQ             loc_2658A4
LDR             R0, [R4,#4]
MOV             R1, #0xFFFFFFFF
BL              sub_2641BC
LDR             R0, [R4,#0x74]
MOV             R1, SP
BL              sub_5CBF98
LDR             R0, [R4,#0x58]
NOP
BL              sub_267E38
LDR             R0, [R4,#4]
MOV             R1, SP
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x368
LDR             R0, [R0]
BL              sub_25EB48
LDR             R0, [R4,#4]
NOP
BL              sub_5CBE68
CMP             R0, #0
NOP
BEQ             loc_2658DC
B               loc_265878
