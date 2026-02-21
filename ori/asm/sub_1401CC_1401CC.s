PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R4, R1
BL              sub_13FED4
MOV             R6, R0
BL              sub_13273C
LDRD            R0, R1, [R5,#0x10]
MOV             R2, #1
SUB             R3, R1, R0
MOV             R1, R2
ADD             R12, R2, R3,ASR#2
CMP             R12, #1
ADDGT           R3, R2, R3,ASR#2
BLE             loc_140228
LDR             R2, [R0]
ADD             R1, R1, #1
ADD             R0, R0, #4
LDR             R12, [R2,#8]
CMP             R12, R4
ADDGT           R12, R12, #1
STRGT           R12, [R2,#8]
CMP             R3, R1
BGT             loc_140204
MOV             R0, R6
POP             {R4-R6,LR}
B               sub_1327BC
