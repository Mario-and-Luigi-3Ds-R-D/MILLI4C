PUSH            {R3-R9,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, [R0,#0xC]
LDRH            R1, [R0]
CMP             R1, R6
BLS             locret_1E2970
LDR             R1, [R4]
ADD             R2, R1, R6,LSL#3
LDRB            R2, [R2,#4]
TST             R2, #1
BNE             locret_1E2970
MOV             R2, #4
ADD             R8, R2, R6,LSL#3
LDRB            R1, [R1,R8]
TST             R1, #4
TSTEQ           R1, #2
BNE             locret_1E2970
ADD             R1, R6, R6,LSL#1
MOV             R2, #2
ADD             R1, R2, R1,LSL#3
ADDS            R5, R0, R1
BEQ             locret_1E2970
LDR             R0, [R4,#8]
BL              sub_221CC4
MOVS            R7, R0
BEQ             locret_1E2970
LDRB            R0, [R5,#4]
MOV             R9, #0
CMP             R0, #0
BEQ             loc_1E2910
LDR             R0, [R4,#8]
LDR             R2, [R5],#8
MOV             R1, #0x10000
LDR             R3, [R5]
LDR             R0, [R0]
STRD            R0, R1, [R7,#8]
MOV             R1, R7
ADD             R0, R4, #0x10
STR             R9, [SP,#0x20+var_20]
BL              sub_10D374
B               loc_1E2954
LDR             R0, [R4,#8]
LDR             R1, [R4]
LDR             R3, [R5]
LDR             R2, =0x102
LDR             R0, [R0,#4]
ADD             R1, R1, R6,LSL#3
BL              sub_5959CC
LDR             R0, [R4]
LDR             R2, [R5],#8
MOV             R1, R7
LDR             R0, [R0,R6,LSL#3]
LDR             R3, [R5]
STR             R0, [R7,#0x14]
STR             R9, [R7,#8]
ADD             R0, R4, #0x10
STR             R9, [SP,#0x20+var_20]
BL              sub_10D374
LDR             R0, [R4]
LDRB            R1, [R0,R8]
ORR             R1, R1, #4
STRB            R1, [R0,R8]
LDR             R0, [R4]
ADD             R0, R0, R6,LSL#3
STR             R0, [R7,#0x28]
POP             {R3-R9,PC}
