MOV             R12, R0
LDR             R0, =off_6D1648
PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R2
LDR             R1, [R0]
LDR             R2, [R3,#8]
MOV             R0, #0
LDR             R4, [R1,#0xA4]
CMP             R2, #0
BLT             loc_178F64
LDR             R1, =0x1D07
MUL             R1, R2, R1
LDR             R2, =0x5830
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x27400
ADD             R1, R1, #0x1D8
LDR             R2, [R2,R1]
TST             R2, #1
BNE             loc_178F4C
ADD             R1, R1, #0x7000
LDR             R1, [R1,#0x2E4]
CMP             R1, #0
BLT             locret_178F60
MOV             R2, R3
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
LDR             R12, [R12,#4]
LDR             R1, [R1,#0xBC]
CMP             R12, R1
LDRNE           R7, =0x401
MOVEQ           R7, #0x400
MOV             R12, #0
LDR             R1, =0x1D07
CMN             R2, #2
MUL             R1, R12, R1
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x27400
ADD             R1, R1, #0x1D8
BEQ             loc_178FA8
LDR             R8, =0x7418
LDR             R8, [R8,R1]
CMP             R8, R7
BNE             loc_178FC8
LDR             R8, =0x5830
LDR             R8, [R8,R1]
TST             R8, #1
BNE             loc_178F4C
ADD             R1, R1, #0x7000
LDR             R1, [R1,#0x2E4]
CMP             R1, #0
BGE             loc_178F4C
ADD             R12, R12, #1
CMP             R12, #4
BLT             loc_178F7C
POP             {R4-R8,PC}
