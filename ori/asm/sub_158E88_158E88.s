PUSH            {R4-R8,LR}
MOV             R4, R1
MOV             R7, R3
LDR             R3, [R1,#8]
LDR             R5, [SP,#0x18+arg_0]
MOV             R8, #0
CMP             R3, #0
STRNE           R8, [R4,#0x14]
MOV             R1, R2
STR             R0, [R4,#0x10]
STR             R1, [R4,#0x28]
LDR             R2, [R0]
MOV             R6, R0
ADD             R3, R4, #0x2C ; ','
LDR             R12, [R2,#0x34]
ADD             R2, R4, #0x18
BLX             R12
CMP             R5, #0
STR             R0, [R4,#0x1C]
BEQ             loc_158EE4
LDR             R0, [R4,#0x18]
CMP             R5, R0
BLS             loc_158EE8
LDR             R5, [R4,#0x18]
STR             R5, [R4,#0x20]
STRH            R8, [R4,#0x24]
LDR             R0, [R4,#0x18]
CMP             R0, #0
STREQ           R8, [R4,#0x48]
BEQ             locret_158F2C
LDRB            R1, [R4,#0x2C]
STR             R0, [R4,#0x48]
ORRS            R0, R1, R7
STRNE           R7, [R4,#0x18]
LDR             R0, [R6,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1]
MOV             R1, R4
POP             {R4-R8,LR}
BX              R2
POP             {R4-R8,PC}
