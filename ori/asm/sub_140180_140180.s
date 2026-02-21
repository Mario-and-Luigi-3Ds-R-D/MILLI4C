PUSH            {R4,LR}
STR             R1, [R0,#0xC]
STR             R2, [R0,#4]
CMP             R2, #0
STR             R3, [R0]
MOV             R4, R0
STRLE           R1, [R0,#8]
BLE             locret_1401B4
LDR             R0, [R4,#8]
SUB             R0, R1, R0
MOV             R1, R2
BL              sub_2FEFCC
STR             R0, [R4,#0x10]
POP             {R4,PC}
