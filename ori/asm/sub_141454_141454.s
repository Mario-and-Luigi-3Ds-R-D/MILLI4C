PUSH            {R4-R8,LR}
SUBS            R4, R0, #0
MOV             R5, R1
CMPNE           R5, #0
BLE             locret_14153C
LDR             R6, =dword_7097E0
MOV             R0, R6
BL              sub_13273C
LDR             R7, =byte_6D4158
LDR             R3, =dword_7017C4
MOV             R0, #0
STRB            R0, [R7]
LDR             R1, [R3,#(dword_7017DC - 0x7017C4)]
LDR             R2, [R3,#(off_7017D8 - 0x7017C4)]
SUB             R0, R1, R1,ASR#3
MOV             R1, R1,ASR#3
ADD             R0, R2, R0,LSL#4
LDR             R12, [R0,#4]
CMP             R12, #0
BEQ             loc_1414B0
LDR             R12, [R0]
CMP             R12, R4
BLS             loc_1414BC
SUB             R0, R0, R1,LSL#4
CMP             R2, R0
BNE             loc_141498
LDR             R2, [R0]
MOV             R12, #1
ADD             R1, R0, R1,LSL#4
CMP             R2, R4
BEQ             loc_1414F4
ADD             R0, R0, #0x10
SUB             R1, R1, R0
ADD             R2, R12, R1,ASR#4
CMP             R2, #1
MOV             R1, #1
BLE             loc_14152C
LDR             R8, [R0]
CMP             R8, R4
BNE             loc_14151C
LDR             R1, [R0,#4]
STR             R5, [R0,#4]
LDR             R2, [R0,#8]
SUB             R1, R1, R5
ADD             R2, R2, R1
STR             R2, [R0,#8]
LDR             R0, [R3,#(dword_7017D4 - 0x7017C4)]
SUB             R0, R0, R1
STR             R0, [R3,#(dword_7017D4 - 0x7017C4)]
B               loc_14152C
ADD             R1, R1, #1
CMP             R2, R1
ADD             R0, R0, #0x10
BGT             loc_1414E8
STRB            R12, [R7]
MOV             R0, R6
POP             {R4-R8,LR}
B               sub_1327BC
POP             {R4-R8,PC}
