PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R0, R1
LDR             R1, [R1]
MOV             R5, R2
LDR             R1, [R1,#0x3C]
BLX             R1
MOV             R4, R0
LDR             R0, [R0]
ADD             R1, R6, #0x13C00
ADD             R1, R1, #0x5C ; '\'
LDR             R2, [R0,#0x168]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x16C]
MOV             R0, R4
BLX             R2
CMP             R5, #0
STRNE           R4, [R5]
POP             {R4-R6,PC}
