PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
MOV             R5, R0
BL              sub_5EE6F4
CMP             R0, #0
ADD             R4, R5, #0x1A0000
BNE             loc_1D19A0
MOV             R0, R5
BL              sub_5EE928
CMP             R0, #0
BEQ             loc_1D19D8
LDR             R1, [R4,#0x58]
MOV             R2, #1
MOV             R0, R5
VLDR            S0, =60.0
STRB            R2, [R1,#0x10]
LDR             R1, =off_6CE9A0; "UseItem" ...
ADD             R2, SP, #0x18+var_14
LDR             R1, [R1,#(dword_6CE9A4 - 0x6CE9A0)]
STR             R1, [SP,#0x18+var_18]
STR             R1, [SP,#0x18+var_14]
MOV             R1, SP
BL              sub_1D23A4
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
MOV             R0, #0
STRB            R0, [R4,#0x6C]
MOV             R0, R5
BL              sub_147108
MOV             R1, R0
STR             R0, [R4,#0x68]
LDR             R0, =0x1064D8
ADD             R0, R0, R5
BL              sub_1DFCE0
LDR             R1, =off_654194
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
