PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =0x119888
ADD             R0, R0, R4
MOV             R5, R0
BL              sub_3375F4
CMP             R0, #0
BEQ             locret_1D43F0
LDR             R0, =0x120F4C
ADD             R0, R0, R4
BL              sub_5CEA34
CMP             R0, #0
BEQ             locret_1D43F0
LDR             R0, =word_19D6A0
LDRSH           R0, [R0,R4]
CMP             R0, #0
BGT             locret_1D43F0
MOV             R1, #0
MOV             R0, R5
BL              sub_337610
MOV             R0, R4
BL              sub_1D1C80
CMP             R0, #0
ADD             R5, R4, #0x1A0000
BEQ             loc_1D43F4
MOV             R1, R4
ADD             R0, R4, #8
BL              sub_1481B0
MOVS            R1, R0
BEQ             loc_1D43F4
MOV             R2, #1
ADD             R0, R4, #0x1A0000
ADD             R0, R0, #0x80
STRB            R2, [R5,#0x84]
STR             R0, [R1,#0x14]
LDR             R0, =0x1064D8
ADD             R0, R0, R4
BL              sub_1DFCE0
LDR             R1, =off_65411C
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x5C]
POP             {R4-R6,PC}
LDR             R1, =off_654104
LDM             R1, {R0,R1}
STRD            R0, R1, [R5,#0x5C]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1D1754
