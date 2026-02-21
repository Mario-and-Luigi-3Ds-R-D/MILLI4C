LDR             R1, =dword_700750
LDR             R0, [R1,#(off_7007EC - 0x700750)]
CMP             R0, #0
BXEQ            LR
LDRB            R2, [R1,#(byte_700761 - 0x700750)]
CMP             R2, #0
BXNE            LR
MOV             R2, #1
STR             R0, [R1,#(dword_7007F0 - 0x700750)]
STRB            R2, [R1,#(byte_700762 - 0x700750)]
LDR             R3, [R0,#0x28]
LDR             R12, [R0,#0x20]
CMP             R3, R12
BXGE            LR
STRB            R2, [R1,#(byte_700761 - 0x700750)]
LDR             R0, [R0,#0x2C]
CMP             R0, #0x300
BXNE            LR
PUSH            {R4,LR}
BL              sub_11A070
BL              sub_11F990
POP             {R4,LR}
B               sub_11A080
