PUSH            {R4-R6,LR}
ADD             R4, R3, #0x68 ; 'h'
LDR             R0, [R3,#8]
LDR             R5, =off_6D1648
CMP             R0, #1
BNE             loc_15B984
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x460
VLDR            S0, [R4,#4]
VLDR            S1, [R0,#4]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#4]
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
VLDR            S0, [R4,#4]
NOP
BL              sub_160BE8
MOV             R0, #0
POP             {R4-R6,PC}
