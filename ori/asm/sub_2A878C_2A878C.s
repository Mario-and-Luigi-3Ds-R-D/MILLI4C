PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x3C]
CMP             R1, #0
BEQ             loc_2A880C
CMP             R0, #0
BEQ             locret_2A8808
BL              sub_45F808
LDR             R0, =dword_6D1F88
LDR             R5, [R4,#0x3C]
LDR             R0, [R0,#(dword_6D1F90 - 0x6D1F88)]
CMP             R0, #0
BEQ             loc_2A87D0
LDR             R2, [R0]
MOV             R1, R5
LDR             R2, [R2,#0xC]
BLX             R2
MOV             R0, R5
BL              sub_10DDA8
MOV             R5, #0
STR             R5, [R4,#0x3C]
LDR             R0, [R4,#0x58]
CMP             R0, #0
BEQ             loc_2A87F4
BL              sub_110D10
STR             R5, [R4,#0x58]
LDR             R0, [R4,#0x54]
CMP             R0, #0
BEQ             locret_2A8808
BL              sub_110D10
STR             R5, [R4,#0x54]
POP             {R4-R6,PC}
ADD             R1, R4, #0x38 ; '8'
STR             R1, [R4,#0xA0]
BL              sub_45F808
LDR             R0, [R4,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1]
ADD             R1, R4, #0x98
POP             {R4-R6,LR}
BX              R2
