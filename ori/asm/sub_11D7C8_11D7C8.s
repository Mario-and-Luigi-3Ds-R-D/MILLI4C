PUSH            {R4-R6,LR}
LDR             R4, =byte_6D23B8
LDR             R0, [R4,#(dword_6D23C8 - 0x6D23B8)]
CMP             R0, #0
LDRNE           R5, =dword_6EF0D0
BEQ             locret_11D844
LDR             R0, [R4,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDREQ           R0, [R5,#0x10]
CMPEQ           R0, #0
BEQ             loc_11D800
LDR             R0, [R5,#0x10]
CMP             R0, #0
BLE             loc_11D80C
LDR             R0, =dword_6D2410
MOV             R1, #1
BL              sub_118A50
LDR             R0, [R4,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDRNE           R0, [R5,#0x10]
CMPNE           R0, #0
BLE             loc_11D82C
LDR             R0, [R5,#0x10]
SUB             R0, R0, #1
STR             R0, [R5,#0x10]
LDR             R0, =0x7F26C8
MOV             R1, #0
BL              sub_121140
LDR             R0, [R4,#(dword_6D23CC - 0x6D23B8)]
CMP             R0, #0
BNE             loc_11D7E0
POP             {R4-R6,PC}
