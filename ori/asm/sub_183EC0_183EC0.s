PUSH            {R4-R8,LR}
LDR             R7, =off_6D1648
LDR             R5, [R3,#8]
LDR             R1, [R7]
CMP             R5, #0
BLT             loc_183EF8
LDR             R0, [R1,#0xA4]
LDR             R1, =0x1D07
MUL             R1, R5, R1
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
BL              sub_54626C
B               loc_183F58
LDR             R0, [R0,#4]
LDR             R1, [R1,#0xBC]
MOV             R4, #0
CMP             R0, R1
LDRNE           R6, =0x401
MOVEQ           R6, #0x400
LDR             R0, =0x1D07
LDR             R2, [R7]
CMN             R5, #2
MUL             R1, R4, R0
LDR             R0, [R2,#0xA4]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x27400
ADD             R0, R0, #0x1D8
BEQ             loc_183F44
LDR             R1, =0x7418
LDR             R1, [R1,R0]
CMP             R1, R6
BNE             loc_183F4C
NOP
BL              sub_54626C
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_183F10
MOV             R0, #0
POP             {R4-R8,PC}
