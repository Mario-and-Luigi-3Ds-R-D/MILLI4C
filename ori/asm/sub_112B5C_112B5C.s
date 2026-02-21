PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R6, =dword_6D45C8
LDR             R0, [R6]
CMP             R0, #0
LDREQ           R0, =unk_70C1D0
STREQ           R0, [R6]
BNE             loc_112C74
LDR             R0, =dword_70C1F4
BL              sub_118AE8
LDR             R4, [R6]
MOV             R7, #0
CMP             R4, #0
BEQ             loc_112BEC
LDR             R0, =off_6C3020
MOV             R2, #1
MOV             R1, R2
STM             R4, {R0,R5}
MOV             R0, #0x360
MUL             R0, R5, R0
BL              sub_12477C
STR             R0, [R4,#8]
LDR             R0, [R4,#4]
MOV             R2, #1
MOV             R1, R2
MOV             R0, R0,LSL#2
BL              sub_12477C
MOV             R2, #1
STR             R0, [R4,#0xC]
MOV             R1, R2
MOV             R0, #0x2400
BL              sub_12477C
ADD             R1, R4, #0x14
STR             R0, [R4,#0x10]
STM             R1, {R0,R7}
STR             R7, [R4,#0x1C]
LDR             R5, [R6]
LDR             R4, [R5,#8]
CMP             R4, #0
LDRNE           R8, =0x4BDA12F7
BEQ             loc_112C3C
MOVS            R0, R4
BEQ             loc_112C20
LDR             R1, [R5,#8]
SUB             R1, R4, R1
SMULL           R2, R1, R8, R1
MOV             R2, R1,ASR#8
SUB             R1, R2, R1,ASR#31
BL              sub_11D9FC
LDRD            R0, R1, [R5,#4]
ADD             R4, R4, #0x360
ADD             R0, R0, R0,LSL#3
ADD             R0, R0, R0,LSL#1
ADD             R0, R1, R0,LSL#5
CMP             R0, R4
BNE             loc_112C00
LDR             R4, [R5,#0x10]
CMP             R4, #0
MOVNE           R8, #3
BEQ             loc_112C70
MOV             R0, R4
BL              sub_1291C4
MOV             R0, R4
ADD             R4, R4, #0x18
STRB            R8, [R0,#0x11]
LDR             R0, [R5,#0x10]
ADD             R0, R0, #0x2400
CMP             R0, R4
BHI             loc_112C4C
STR             R7, [R5,#0x20]
LDR             R0, [R6]
POP             {R4-R8,PC}
