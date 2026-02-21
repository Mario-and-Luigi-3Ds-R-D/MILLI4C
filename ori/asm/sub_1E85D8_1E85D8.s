PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
MOV             R5, R2
LDR             R0, [R0]
LDR             R0, [R0,#0x10]
STR             R0, [R4,#0x1C]
ADD             R0, R4, #4
BL              sub_10D2AC
LDR             R1, =0xFFF
MOV             R0, #7
STR             R1, [R4,#0x6C]
STR             R5, [R4,#0x68]
STR             R0, [R4,#0x90]
MOV             R0, #0
STR             R0, [R4,#0x58]
STR             R5, [R4,#0x8C]
MOV             R3, R0
MOV             R2, R0
MOV             R1, R0
STR             R0, [R4,#0x5C]
ADD             R0, R4, #4
BL              sub_2A8838
MOV             R0, #1
STRB            R0, [R4,#0xA8]
POP             {R4-R6,PC}
