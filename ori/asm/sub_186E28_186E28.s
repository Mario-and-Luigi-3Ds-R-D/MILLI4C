PUSH            {R4-R10,LR}
ADD             R4, R0, #0x13C00
ADD             R4, R4, #0x134
MOV             R7, R0
LDR             R0, [R4]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_186E78
ADD             R0, R7, #0x13C00
ADD             R0, R0, #0x138
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_186E6C
BL              sub_4BE0F8
LDR             R1, =0x13D38
MOV             R0, #0
STR             R0, [R1,R7]
LDR             R0, [R4]
BL              sub_2FF5D4
STR             R8, [R4]
LDR             R5, =off_6D1648
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_186EE8
LDR             R0, [R0,#0xA0]
CMP             R0, #0
BEQ             loc_186EA8
MOV             R1, #1
BL              sub_2D30FC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_186EE8
LDR             R6, =0x401
MOV             R4, #0
LDR             R1, =0x1D07
LDR             R0, [R5]
MUL             R1, R4, R1
LDR             R0, [R0,#0xA4]
ADD             R0, R0, R1,LSL#2
LDR             R1, =0x7418
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
LDR             R1, [R1,R0]
CMP             R1, R6
BLEQ            sub_54626C
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_186EB0
LDR             R0, =0x14418
LDR             R6, [R0,R7]
CMP             R6, #0
MOVNE           R5, #0
MOVNE           R9, #0xFFFFFFFF
BEQ             loc_186F2C
ADD             R0, R5, R5,LSL#4
ADD             R0, R0, R5,LSL#5
ADD             R4, R6, R0,LSL#4
ADD             R0, R4, #0x1A8
BL              sub_536F74
STRB            R8, [R4,#0x196]
ADD             R5, R5, #1
STRB            R9, [R4,#0x194]
CMP             R5, #5
STRB            R8, [R4,#0x197]
BLT             loc_186F00
MOV             R0, R7
POP             {R4-R10,LR}
B               sub_2AC9AC
