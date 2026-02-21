PUSH            {R4-R6,LR}
MOV             R5, R0
ADD             R0, R2, #0x68 ; 'h'
MOV             R6, R1
VLDM            R0, {S0-S1}
MOV             R4, R2
BL              sub_5F63A4
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
