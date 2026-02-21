PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R2
MOV             R2, #0
MOV             R0, R1
STRB            R2, [R5,#5]
STRB            R4, [R5,#4]
LDR             R2, [R0]
MOV             R1, R4
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
MOV             R2, R4
STR             R0, [R5]
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_110BE4
