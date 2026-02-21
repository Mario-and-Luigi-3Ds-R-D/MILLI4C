PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
ADD             R0, R0, #4
BL              sub_5B922C
LDR             R0, =0x3E7
CMP             R5, R0
MOVLS           R0, R5
STR             R0, [R4]
POP             {R4-R6,PC}
