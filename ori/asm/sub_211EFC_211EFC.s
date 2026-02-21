PUSH            {R4-R8,LR}
LDR             R7, =off_6CE970
LDR             R8, =0x19DFE8
LDR             R0, [R7]
LDR             R1, [R0,R8]
CMP             R1, #0
MOVEQ           R0, #0
BEQ             locret_211F74
LDR             R3, [R2,#0x10]
ADD             R2, R2, #8
LDM             R2, {R1,R4}
CMP             R3, #0
MOVNE           R6, #1
MOVEQ           R6, #0
CMP             R4, #0
UXTH            R1, R1
MOVLT           R4, #0
BL              sub_52F368
LDRB            R5, [R0,#0x495]
LDR             R0, [R7]
MOV             R1, R5
LDR             R0, [R0,R8]
BL              sub_5EA4FC
SUB             R2, R4, R0
LDR             R0, [R7]
MOV             R3, R6
MOV             R1, R5
LDR             R0, [R0,R8]
BL              sub_4D4AEC
MOV             R0, #0
POP             {R4-R8,PC}
