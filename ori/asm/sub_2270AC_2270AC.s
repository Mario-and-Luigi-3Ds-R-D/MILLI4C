PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R0
LDR             R0, =0x128F4
ADD             R1, R1, #0x12000
ADD             R1, R1, #0x8F0
MOV             R8, R2
LDR             R4, [R1]
LDR             R5, [R0,R6]
CMP             R4, R5
BEQ             loc_227120
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R2, [R1,#0x18]
MOV             R1, R8
BLX             R2
CMP             R0, #0
BEQ             loc_227114
LDR             R1, [R4],#4
ADD             R0, R7, #4
STM             R7, {R1,R4}
LDR             R1, [R4,#4]
STR             R1, [R7,#8]
STR             R0, [R1]
STR             R0, [R4,#4]
POP             {R4-R8,PC}
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2270D8
LDR             R0, [R6,#8]!
LDR             R1, [R8,#0x24]!
VLDR            S0, =0.0
LDR             R2, [R8,#8]
STR             R1, [R0,#4]
VSTR            S0, [R0,#8]
STR             R2, [R0,#0xC]
LDR             R0, [R6],#4
STM             R7, {R0,R6}
ADD             R7, R7, #4
LDR             R0, [R6,#4]
STR             R0, [R7,#4]
STR             R7, [R0]
STR             R7, [R6,#4]
POP             {R4-R8,PC}
