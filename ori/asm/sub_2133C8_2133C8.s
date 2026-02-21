PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R1, =off_6CE970
MOV             R5, R0
LDR             R0, =0x19DFE8
MOV             R6, R2
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             loc_2133FC
BL              sub_5C6EDC
CMP             R0, #0
BEQ             loc_213404
MOV             R0, #0
POP             {R4-R6,PC}
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
