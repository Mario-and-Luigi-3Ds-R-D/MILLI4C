PUSH            {R4-R10,LR}
MOV             R7, R0
MOV             R8, R1
LDR             R0, [R1]
MOV             R9, R2
LDR             R1, [R0,#0x3C4]
MOV             R0, R8
BLX             R1
MOV             R4, R0
LDR             R0, [R8]
MOV             R5, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BLS             loc_17F32C
LDR             R0, [R7]
LDR             R1, [R4]
MOV             R2, R9
LDR             R3, [R0,#0x68]
MOV             R0, R7
BLX             R3
CMP             R0, #1
MOV             R6, R0
BNE             loc_17F350
LDR             R0, [R8]
ADD             R4, R4, #4
ADD             R5, R5, #1
LDR             R1, [R0,#0x3CC]
MOV             R0, R8
BLX             R1
CMP             R0, R5
BHI             loc_17F2E4
B               loc_17F334
CMP             R6, #1
BNE             loc_17F350
LDR             R0, [R7]
MOV             R2, R9
MOV             R1, R8
LDR             R3, [R0,#0x68]
MOV             R0, R7
BLX             R3
MOV             R6, R0
CMP             R6, #0
BNE             loc_17F36C
LDR             R0, [R7,#0x338]
TST             R0, #1
BEQ             loc_17F36C
TST             R0, #2
MOVEQ           R6, #1
MOV             R0, R6
POP             {R4-R10,PC}
