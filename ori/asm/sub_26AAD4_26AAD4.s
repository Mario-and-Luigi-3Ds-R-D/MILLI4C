LDR             R1, =off_6BBE9C
PUSH            {R4-R8,LR}
STR             R1, [R0],#0x20
ADD             R7, R0, #0x24 ; '$'
LDR             R6, [R0,#0x24]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_26AB3C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26AB28
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26AB28
BL              sub_14F3EC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26AAF4
SUB             R0, R7, #0x44 ; 'D'
POP             {R4-R8,PC}
