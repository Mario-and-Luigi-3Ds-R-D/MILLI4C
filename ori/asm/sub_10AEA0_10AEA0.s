PUSH            {R4-R8,LR}
MOV             R5, R0
AND             R0, R0, #0x1F
LDR             R6, =dword_700750
ADD             R7, R6, R0,LSL#2
LDR             R4, [R7,#0x1C]
CMP             R4, #0
BEQ             loc_10AEE4
LDR             R0, [R4]
CMP             R0, R5
BEQ             loc_10AEDC
LDR             R4, [R4,#0x40]
CMP             R4, #0
BNE             loc_10AEC0
B               loc_10AEE4
CMP             R4, #0
BNE             loc_10AF94
CMP             R5, #0
BEQ             loc_10AF94
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_10AF18
MOV             R3, #0x44 ; 'D'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R4, R0
MOV             R1, #0x44 ; 'D'
MOV             R0, R4
BL              sub_2FFE8C
MOV             R0, #0x300
STR             R0, [R4,#0x2C]
STR             R5, [R4]
LDR             R0, [R7,#0x1C]
CMP             R0, #0
STREQ           R4, [R7,#0x1C]
BEQ             loc_10AF94
LDR             R1, [R0]
CMP             R1, R5
STRHI           R0, [R4,#0x40]
STRHI           R4, [R7,#0x1C]
BHI             loc_10AF94
LDR             R1, [R0,#0x40]
CMP             R1, #0
BEQ             loc_10AF90
LDR             R2, [R1]
CMP             R2, R5
BLS             loc_10AF80
STR             R4, [R0,#0x40]
CMP             R1, #0
STR             R1, [R4,#0x40]
BNE             loc_10AF94
B               loc_10AF90
MOV             R0, R1
LDR             R1, [R1,#0x40]
CMP             R1, #0
BNE             loc_10AF60
STR             R4, [R0,#0x40]
LDR             R1, [R6,#(off_7007EC - 0x700750)]
LDR             R0, =dword_6D2418
CMP             R1, #0
BEQ             loc_10AFB4
LDR             R2, [R1,#4]
LDR             R3, [R0]
SUB             R2, R3, R2
STR             R2, [R1,#0xC]
CMP             R4, #0
STR             R4, [R6,#(off_7007EC - 0x700750)]
LDRNE           R2, [R4,#4]
LDR             R1, =dword_6D241C
CMPNE           R2, #0
BEQ             loc_10AFE8
LDR             R3, [R4,#0xC]
ADD             R3, R3, R2
STR             R3, [R0]
LDR             R0, [R4,#8]
ADD             R0, R0, R2
STR             R0, [R1]
POP             {R4-R8,PC}
MOV             R2, #0
STR             R2, [R1]
STR             R2, [R0]
POP             {R4-R8,PC}
