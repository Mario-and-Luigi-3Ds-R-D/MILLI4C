PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R6, =off_6CE970
LDR             R5, [R6]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_153094
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_153094
ADD             R0, R4, #0x1400
ADD             R0, R0, #0x33C
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1530A0
LDR             R1, [R6]
LDR             R0, [R4,#8]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xE000
LDR             R7, [R0,#0x18]
LDR             R5, [R1,#(loc_10E090 - 0x10E000)]
ADD             R1, R4, #0x1400
ADD             R1, R1, #0x1E4
MOV             R0, R5
LDR             R6, [R5,#0x19C]
BL              sub_149BDC
ADD             R3, R4, #0x1800
ADD             R3, R3, #0x1DC
MOV             R2, R6
MOV             R1, R7
MOV             R0, R5
BL              sub_14C8F8
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(dword_63FCF0 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R8,PC}
