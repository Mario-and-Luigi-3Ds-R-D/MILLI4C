LDRB            R2, [R0,#0x56]
CMP             R2, #0
BXEQ            LR
PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R6, #0
LDR             R2, [R1]
STR             R2, [SP,#0x38+var_38]
LDR             R2, [R1,#4]
STR             R2, [SP,#0x38+var_34]
LDR             R2, [R1,#8]
STR             R2, [SP,#0x38+var_30]
LDR             R1, [R1,#0xC]
STR             R1, [SP,#0x38+var_2C]
LDR             R1, [R0,#0x40]
ADD             R1, R1, R1,LSL#2
MOV             R8, R1,LSL#5
LDRB            R1, [R0,#0x55]
CMP             R1, #0
MOVHI           R9, SP
BLS             loc_13E7A4
ADD             R7, R0, R6,LSL#2
LDR             R2, [R9,R6,LSL#2]
LDR             R1, [R7,#0x1C]
MOV             R4, #0
ADD             R3, R1, R8,LSL#2
LDR             R1, [R7,#0x2C]
LDR             R12, [R3]
LDR             R10, [R0,#0x44]
LDR             LR, [R2]
CMP             R12, #0
MOVGE           R5, R12
RSBLT           R5, R12, #0
ADD             R4, R4, #1
MUL             R5, R5, R10
LDRD            R10, R11, [R0,#0x48]
MOV             R5, R5,ASR#7
RSBLT           R5, R5, #0
SUB             R5, LR, R5
CMP             R4, #0xA0
MUL             R5, R10, R5
MLA             R1, R11, R1, R5
MOV             R1, R1,ASR#7
STR             R1, [R3],#4
STR             R12, [R2],#4
BCC             loc_13E744
STR             R1, [R7,#0x2C]
LDRB            R1, [R0,#0x55]
ADD             R6, R6, #1
CMP             R6, R1
BCC             loc_13E72C
LDR             R1, [R0,#0x40]
LDR             R2, [R0,#0x3C]
ADD             R1, R1, #1
CMP             R2, R1
STR             R1, [R0,#0x40]
MOVLS           R1, #0
STRLS           R1, [R0,#0x40]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
