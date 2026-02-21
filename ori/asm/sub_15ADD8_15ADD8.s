PUSH            {R3-R9,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R0, [R0,#0x10]
LDRH            R1, [R0]
CMP             R1, R6
BLS             locret_15AEE0
LDR             R1, [R4,#4]
ADD             R2, R1, R6,LSL#3
LDRB            R2, [R2,#4]
TST             R2, #1
BNE             locret_15AEE0
MOV             R2, #4
ADD             R8, R2, R6,LSL#3
LDRB            R1, [R1,R8]
TST             R1, #4
TSTEQ           R1, #2
BNE             locret_15AEE0
ADD             R1, R6, R6,LSL#2
MOV             R2, #2
ADD             R1, R2, R1,LSL#2
ADDS            R5, R0, R1
BEQ             locret_15AEE0
LDR             R0, [R4,#0xC]
BL              sub_221CC4
MOVS            R7, R0
BEQ             locret_15AEE0
LDRB            R0, [R5,#4]
MOV             R9, #0
CMP             R0, #0
BEQ             loc_15AE80
LDR             R0, [R4,#0xC]
LDR             R2, [R5],#8
MOV             R1, #0x10000
LDR             R3, [R5]
LDR             R0, [R0]
STRD            R0, R1, [R7,#8]
MOV             R1, R7
ADD             R0, R4, #0x14
STR             R9, [SP,#0x20+var_20]
BL              sub_10D374
B               loc_15AEC4
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#4]
LDR             R3, [R5]
LDR             R2, =0x102
LDR             R0, [R0,#4]
ADD             R1, R1, R6,LSL#3
BL              sub_5959CC
LDR             R0, [R4,#4]
LDR             R2, [R5],#8
MOV             R1, R7
LDR             R0, [R0,R6,LSL#3]
LDR             R3, [R5]
STR             R0, [R7,#0x14]
STR             R9, [R7,#8]
ADD             R0, R4, #0x14
STR             R9, [SP,#0x20+var_20]
BL              sub_10D374
LDR             R0, [R4,#4]
LDRB            R1, [R0,R8]
ORR             R1, R1, #4
STRB            R1, [R0,R8]
LDR             R0, [R4,#4]
ADD             R0, R0, R6,LSL#3
STR             R0, [R7,#0x28]
POP             {R3-R9,PC}
