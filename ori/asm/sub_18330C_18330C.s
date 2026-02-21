PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R7, R0
LDR             R0, =off_6D1648
LDR             R12, [R3,#8]
MOV             R6, R2
LDR             R1, [R0]
CMP             R12, #0
MOV             R0, #0
LDR             R4, [R1,#0xA4]
BLT             loc_183374
LDR             R2, =0x1D07
LDR             R1, =0x275D8
MUL             R2, R12, R2
ADD             R1, R1, R2,LSL#2
ADD             R1, R1, R4
ADD             R1, R1, #0x7000
LDR             R1, [R1,#0x2E4]
CMN             R1, #1
BEQ             locret_183370
MOV             R2, R3
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
LDR             R2, [R7,#4]
LDR             R1, [R1,#0xBC]
CMP             R2, R1
LDRNE           R7, =0x401
MOVEQ           R7, #0x400
MOV             R1, #0
LDR             R2, =0x1D07
CMN             R12, #2
MUL             R2, R1, R2
ADD             R2, R4, R2,LSL#2
ADD             R2, R2, #0x27400
ADD             R2, R2, #0x1D8
BEQ             loc_1833B8
LDR             R8, =0x7418
LDR             R8, [R8,R2]
CMP             R8, R7
BNE             loc_1833C8
ADD             R2, R2, #0x7000
LDR             R2, [R2,#0x2E4]
CMN             R2, #1
BNE             loc_18335C
ADD             R1, R1, #1
CMP             R1, #4
BLT             loc_18338C
POP             {R4-R8,PC}
