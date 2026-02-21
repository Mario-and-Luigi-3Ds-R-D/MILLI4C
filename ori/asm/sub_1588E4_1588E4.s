PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R6, R1
MOV             R5, R2
MOV             R1, #0
MOV             R0, SP
BL              sub_1164C0
LDR             R12, [SP,#0x18+var_18]
MOV             R3, R5
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, R6
BLX             R12
MOV             R1, #0
ADD             R3, R4, #0xC
ADD             R2, R0, R5
STR             R1, [R4,#8]
STM             R3, {R1,R2}
STR             R1, [R4,#0x14]
STR             R0, [R4,#4]!
STR             R1, [R4,#0x14]!
STR             R6, [R4,#8]
POP             {R3-R7,PC}
