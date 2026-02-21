PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, #0
VPUSH           {D8}
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_104400
LDR             R6, =dword_6E9820
ADD             R0, R4, #4
ADD             R1, R4, #0x18
VLDR            S16, [R6,#(dword_6E994C - 0x6E9820)]
STR             R0, [R6,#(dword_6E994C - 0x6E9820)]
MOV             R0, #1
BL              sub_10B1F8
STR             R5, [R4,#0x18]
STR             R5, [R4,#0x10]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1043FC
BL              sub_110D10
STR             R5, [R4]
VSTR            S16, [R6,#(dword_6E994C - 0x6E9820)]
LDR             R1, =off_6B7E14
MOV             R0, R4
STR             R1, [R4,#4]
STR             R5, [R4,#0x10]
VPOP            {D8}
POP             {R4-R6,PC}
