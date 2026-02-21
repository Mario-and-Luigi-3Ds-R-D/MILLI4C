PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_10437C
LDR             R5, =dword_6E9820
ADD             R0, R4, #4
ADD             R1, R4, #0x18
VLDR            S16, [R5,#(dword_6E994C - 0x6E9820)]
STR             R0, [R5,#(dword_6E994C - 0x6E9820)]
MOV             R0, #1
BL              sub_10B1F8
MOV             R6, #0
STR             R6, [R4,#0x18]
STR             R6, [R4,#0x10]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_104378
BL              sub_110D10
STR             R6, [R4]
VSTR            S16, [R5,#(dword_6E994C - 0x6E9820)]
VPOP            {D8}
POP             {R4-R6,PC}
