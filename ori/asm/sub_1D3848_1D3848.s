PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =dword_6E2378
LDRB            R0, [R6,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D386C
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_1D3880
MOV             R0, R5
BL              sub_52C5FC
CMP             R0, #0
NOP
BEQ             locret_1D38E8
LDRB            R0, [R6,#(byte_6E2389 - 0x6E2378)]
ADD             R4, R5, #0x1A0000
CMP             R0, #0
BEQ             loc_1D38A4
CMP             R0, #1
BEQ             loc_1D38EC
CMP             R0, #2
CMPNE           R0, #4
BNE             loc_1D38EC
MOV             R1, R5
ADD             R0, R5, #8
BL              sub_147C04
MOVS            R1, R0
NOP
BEQ             loc_1D38EC
MOV             R0, #1
STRB            R0, [R4,#0x84]
LDR             R0, =0x1064D8
ADD             R2, R5, #0x1A0000
ADD             R2, R2, #0x80
ADD             R0, R0, R5
STR             R2, [R1,#0x14]
BL              sub_1DFCE0
LDR             R1, =off_65416C
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R6,PC}
LDRB            R0, [R6,#(byte_6E2389 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D3910
CMP             R0, #1
BEQ             loc_1D3920
CMP             R0, #2
BEQ             loc_1D3930
CMP             R0, #4
BNE             locret_1D38E8
LDR             R1, =off_654174
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R6,PC}
LDR             R1, =off_65417C
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R6,PC}
LDR             R1, =off_654184
LDM             R1, {R0,R1}
STRD            R0, R1, [R4,#0x5C]
POP             {R4-R6,PC}
