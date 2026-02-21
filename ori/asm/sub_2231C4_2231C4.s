PUSH            {R4-R8,LR}
ADD             R1, R0, #0x14
MOV             R7, #0
STR             R7, [R0]
STR             R7, [R0,#8]
STR             R1, [R0,#0x5C]!
SUB             R4, R0, #0x48 ; 'H'
STR             R1, [R0,#4]
LDR             R0, =off_6CE970
MOV             R6, #0x24 ; '$'
MOV             R5, #6
MOV             R1, #0xD8
LDR             R0, [R0]
LDR             R2, [R0,#0x68]!
LDR             R3, [R2,#0xC]
MOV             R2, R7
BLX             R3
STR             R0, [R4,#-0x14]!
ADD             R2, R4, #4
MOV             R1, R0
STM             R2, {R0,R5}
MOV             R2, #0
STR             R5, [R4,#0xC]
STRB            R7, [R4,#0x10]
ADD             R3, R0, R6
ADD             R2, R2, #1
STR             R3, [R0]
CMP             R2, R5
MOV             R0, R3
BCC             loc_223224
SUB             R0, R5, #1
MLA             R0, R6, R0, R1
STR             R7, [R0]
MOV             R0, #1
STRB            R0, [R4,#0x10]
STRB            R0, [R4,#0x64]
LDR             R0, =off_6CDA80
LDR             R0, [R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R1, R0, #0x400
VLDR            S1, [R0,#0x118]
VLDR            S0, [R1,#0xA4]
VLDR            S2, [R1,#0x98]
MOV             R0, R4
VADD.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x68]
BL              sub_222B78
MOV             R0, R4
POP             {R4-R8,PC}
