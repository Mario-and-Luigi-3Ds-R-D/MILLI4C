ADD             R0, R0, #0x60 ; '`'
PUSH            {R4,LR}
LDR             R1, [R0,#4]
CMP             R1, #0
MOVNE           R1, #0
STRNE           R1, [R0,#4]
SUB             R0, R0, #0x50 ; 'P'
NOP
SUB             R4, R0, #0x10
MOV             R0, R4
BL              sub_61E4FC
MOV             R0, R4
BL              sub_629260
POP             {R4,PC}
