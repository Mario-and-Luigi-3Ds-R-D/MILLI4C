PUSH            {R4-R8,LR}
MOV             R6, #0
LDR             R5, =dword_700750
LDR             R4, [R5,#(dword_7007F0 - 0x700750)]
LDR             R0, [R4,#0x28]
LDR             R1, [R4,#0x18]
RSB             R0, R0, R0,LSL#3
ADD             R8, R1, R0,LSL#2
BL              sub_11A070
LDR             R0, [R4,#0x28]
ADD             R0, R0, #1
STR             R0, [R4,#0x28]
LDR             R1, [R4,#0x38]
CMP             R1, #0
BEQ             loc_11F8D4
LDRB            R2, [R8,#1]
CMP             R2, #0
BNE             loc_11F8CC
LDR             R2, [R4,#0x20]
CMP             R0, R2
BNE             loc_11F8D4
LDRB            R2, [R4,#0x3C]
CMP             R2, #0
BEQ             loc_11F8D4
MOV             R6, R1
MOV             R7, R0
LDRB            R2, [R8,#2]
MOV             R1, #0
CMP             R2, #0
BEQ             loc_11F914
STRB            R1, [R5,#(byte_700762 - 0x700750)]
STRB            R1, [R5,#(byte_700768 - 0x700750)]
STRB            R1, [R5,#(byte_700761 - 0x700750)]
NOP
BL              sub_11A080
CMP             R6, #0
NOP
BEQ             locret_11F930
MOV             R0, R7
MOV             R12, R6
POP             {R4-R8,LR}
BX              R12
LDR             R2, [R4,#0x20]
CMP             R0, R2
STRBGE          R1, [R5,#(byte_700761 - 0x700750)]
BLLT            sub_11F990
NOP
NOP
B               loc_11F8F0
POP             {R4-R8,PC}
