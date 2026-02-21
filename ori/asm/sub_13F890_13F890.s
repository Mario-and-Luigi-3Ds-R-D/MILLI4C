PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
SUBS            R1, R2, #0
MOV             R0, R0,LSL#12
STR             R0, [R4,#0xC]
STR             R1, [R4,#4]
STR             R3, [R4]
STRLE           R0, [R4,#8]
BLE             locret_13F8C8
LDR             R2, [R4,#8]
SUB             R0, R0, R2
BL              sub_2FEFCC
STR             R0, [R4,#0x10]
POP             {R4,PC}
