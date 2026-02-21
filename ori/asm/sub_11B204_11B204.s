PUSH            {R4-R8,LR}
MOV             R0, #0xE
BL              sub_11A168
LDR             R4, =0xC8A0CFF0
LDR             R5, =0xE0A0CC08
LDR             R6, =0xC8A0CC02
NOP
BL              sub_1233A8
NOP
NOP
BL              sub_1239FC
MOV             R7, R0
NOP
BL              sub_123520
CMP             R7, R4
MOV             R0, R7
CMPNE           R0, R5
CMPNE           R7, R6
BNE             locret_11B27C
LDR             R12, =0xF4240
MOV             R1, #0xA
MOV             R3, #0
MOV             R2, R1,ASR#31
UMULL           R0, R7, R1, R12
MLA             R2, R2, R12, R7
MLA             R1, R1, R3, R2
BL              sub_121140
NOP
NOP
B               loc_11B21C
POP             {R4-R8,PC}
