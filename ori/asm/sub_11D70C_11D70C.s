PUSH            {R4-R6,LR}
LDR             R6, =byte_6D23B8
LDR             R0, [R6,#(dword_6D23C8 - 0x6D23B8)]
CMP             R0, #0
BEQ             locret_11D7BC
LDR             R5, =dword_6EF0D0
MOV             R0, #0
STR             R0, [R6,#(dword_6D23D8 - 0x6D23B8)]
NOP
BL              sub_129070
NOP
NOP
BL              sub_13F210
MOV             R4, R0
NOP
BL              sub_13273C
LDR             R0, [R6,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDREQ           R0, [R5]
CMPEQ           R0, #0
BEQ             loc_11D76C
LDR             R0, [R5]
CMP             R0, #0
BLE             loc_11D77C
LDR             R0, [R6,#(dword_6D23C8 - 0x6D23B8)]
MOV             R1, #1
LDR             R0, [R0,#8]
BL              sub_1242E4
NOP
BL              sub_12228C
MOV             R0, R4
NOP
BL              sub_1327BC
LDR             R0, [R6,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDRNE           R0, [R5]
CMPNE           R0, #0
BLE             loc_11D7B0
LDR             R0, [R5]
SUB             R0, R0, #1
STR             R0, [R5]
LDR             R0, [R6,#(dword_6D23CC - 0x6D23B8)]
CMP             R0, #0
BNE             loc_11D72C
POP             {R4-R6,PC}
