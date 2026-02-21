PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =dword_700750
AND             R0, R0, #0x1F
ADD             R6, R5, R0,LSL#2
LDR             R0, [R6,#0xA4]
CMP             R0, #0
BEQ             loc_10B03C
LDR             R1, [R0]
CMP             R1, R4
LDRNE           R0, [R0,#0x18]
CMPNE           R0, #0
BNE             loc_10B028
CMP             R4, #0
BEQ             loc_10B0F8
CMP             R0, #0
BNE             loc_10B0F8
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10B074
MOV             R3, #0x1C
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R1, #0
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0x14]
STR             R1, [R0,#0x18]
STR             R4, [R0]
LDR             R2, [R6,#0xA4]
CMP             R2, #0
STREQ           R0, [R6,#0xA4]
BEQ             loc_10B0F8
LDR             R1, [R2]
CMP             R1, R4
STRHI           R2, [R0,#0x18]
STRHI           R0, [R6,#0xA4]
BHI             loc_10B0F8
LDR             R1, [R2,#0x18]
CMP             R1, #0
BEQ             loc_10B0F4
LDR             R3, [R1]
CMP             R3, R4
BLS             loc_10B0E4
STR             R0, [R2,#0x18]
CMP             R1, #0
STR             R1, [R0,#0x18]
BNE             loc_10B0F8
B               loc_10B0F4
MOV             R2, R1
LDR             R1, [R1,#0x18]
CMP             R1, #0
BNE             loc_10B0C4
STR             R0, [R2,#0x18]
LDR             R1, [R5,#(dword_700874 - 0x700750)]
ADD             R1, R5, R1,LSL#2
STR             R0, [R1,#0x128]
POP             {R4-R6,PC}
