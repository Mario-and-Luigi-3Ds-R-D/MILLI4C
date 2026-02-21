PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R5, R1
LDR             R0, [R1]
MOV             R7, R2
LDR             R1, [R0,#0x38]
MOV             R0, R5
BLX             R1
MOV             R4, R0
LDR             R0, [R0]
ADD             R1, R6, #0x13C00
ADD             R1, R1, #0x5C ; '\'
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #4
LDR             R0, [R4]
LDR             R2, [R0,#0x2C]
BEQ             loc_2AC6A0
ADD             R1, R6, #0x13800
ADD             R1, R1, #0x374
MOV             R0, R4
BLX             R2
CMP             R7, #0
STRNE           R4, [R7]
POP             {R4-R8,PC}
MOV             R1, #0
MOV             R0, R4
BLX             R2
B               loc_2AC694
