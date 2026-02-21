PUSH            {R3,LR}
LDR             R3, =0xF02CB
MOV             R2, #0
STR             R2, [R1],#4
MOV             R2, #0x2CC
STR             R3, [R1],#4
LDR             R3, [R0,#0x90]
CMP             R3, #0x200
MOVCS           R3, #0x200
STR             R3, [SP,#8+var_8]
LDR             R3, [R0,#0x8C]
BL              sub_11E478
LDR             R1, =0xF02BF
MOV             R2, #1
STR             R2, [R0],#4
STR             R1, [R0],#4
POP             {R3,PC}
