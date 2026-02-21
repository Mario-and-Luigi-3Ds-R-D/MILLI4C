PUSH            {R3-R9,LR}
LDR             R1, [R0]
LDR             R6, [R0,#0xC]
LDR             R1, [R1,#0x68]
BLX             R1
SUBS            R5, R0, #0
MOV             R4, #0
MOVGT           R8, #0
BLE             locret_119D6C
ADD             R7, R4, R4,LSL#2
LDR             R0, [R6,R7,LSL#2]
CMP             R0, #0
STR             R0, [SP,#0x20+var_20]
BEQ             loc_119D60
MOV             R1, SP
MOV             R0, #1
BL              sub_1265EC
STR             R8, [R6,R7,LSL#2]
ADD             R4, R4, #1
CMP             R4, R5
BLT             loc_119D3C
POP             {R3-R9,PC}
