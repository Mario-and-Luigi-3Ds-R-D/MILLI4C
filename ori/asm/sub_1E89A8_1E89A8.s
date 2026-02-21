PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R1
LDRB            R0, [R0,#0x4C]
MOV             R4, #0
CMP             R0, #0
MOVGT           R7, #0x104
BLE             locret_1E89FC
LDR             R0, [R5,#0x38]
RSB             R1, R4, R4,LSL#3
ADD             R1, R1, R4,LSL#6
ADDS            R2, R0, R1,LSL#2
ADDNE           R1, R7, R1,LSL#2
ADDNE           R1, R1, R0
MOVEQ           R1, #0
ADD             R0, R6, #4
BL              sub_2018EC
LDRB            R0, [R5,#0x4C]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1E89C8
POP             {R4-R8,PC}
