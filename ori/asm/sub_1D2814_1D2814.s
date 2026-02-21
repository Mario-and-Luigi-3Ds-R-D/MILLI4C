PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x1A0000
SUB             SP, SP, #8
LDR             R0, [R0,#0x58]
MOV             R1, #1
STRB            R1, [R0,#0x10]
MOV             R0, R4
BL              sub_1D1484
LDR             R1, =off_6CE9A0; "UseItem" ...
MOV             R0, R4
ADD             R2, SP, #0x10+var_C
VLDR            S0, =60.0
LDR             R1, [R1,#(dword_6CE9A4 - 0x6CE9A0)]
STR             R1, [SP,#0x10+var_10]
STR             R1, [SP,#0x10+var_C]
MOV             R1, SP
BL              sub_1D23A4
ADD             SP, SP, #8
POP             {R4,PC}
