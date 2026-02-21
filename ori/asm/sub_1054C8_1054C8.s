PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R4, =dword_6D1F88
LDR             R0, [R4,#(dword_6D1F8C - 0x6D1F88)]
CMP             R0, #0
BEQ             loc_105500
BL              sub_10DD64
BL              sub_1076C4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1054FC
BL              sub_110D10
STR             R5, [R4]
STR             R5, [R4,#(dword_6D1F8C - 0x6D1F88)]
STR             R5, [R4,#(dword_6D1F90 - 0x6D1F88)]
POP             {R4-R6,PC}
