PUSH            {R4-R6,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x4C]
MOV             R4, #0
CMP             R0, #0
MOVGT           R6, #0x104
BLE             locret_1E8D70
RSB             R1, R4, R4,LSL#3
LDR             R0, [R5,#0x38]
ADD             R1, R1, R4,LSL#6
ADD             R1, R6, R1,LSL#2
ADD             R0, R0, R1
BL              sub_58DD64
LDRB            R0, [R5,#0x4C]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1E8D48
POP             {R4-R6,PC}
