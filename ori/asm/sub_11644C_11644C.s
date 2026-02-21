PUSH            {R4-R6,LR}
MOV             R12, #0
LDR             R4, =dword_700750
LDR             R5, [R4,#(off_7007EC - 0x700750)]
LDR             R3, [R5,#0x20]
LDR             R6, [R5,#0x18]
RSB             R3, R3, R3,LSL#3
ADD             R3, R6, R3,LSL#2
STRB            R12, [R3],#4
STM             R3, {R0-R2}
BL              sub_11A070
LDR             R0, [R5,#0x20]
ADD             R0, R0, #1
STR             R0, [R5,#0x20]
LDR             R0, [R4,#(dword_7007F0 - 0x700750)]
CMP             R0, R5
BNE             loc_1164B4
LDRB            R0, [R4,#(byte_700762 - 0x700750)]
CMP             R0, #0
BEQ             loc_1164B4
LDRB            R0, [R4,#(byte_700761 - 0x700750)]
CMP             R0, #0
BNE             loc_1164B4
MOV             R0, #1
STRB            R0, [R4,#(byte_700761 - 0x700750)]
BL              sub_11F990
POP             {R4-R6,LR}
B               sub_11A080
