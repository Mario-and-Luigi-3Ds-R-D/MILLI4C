NOP
PUSH            {R0-R2,R4-R11,LR}
MOV             R4, R2
ADD             R0, R4, #0xC
ADD             R7, R4, #0x80
MOV             R10, R1
VPUSH           {D8}
SUB             SP, SP, #0x30
LDR             R1, [R2,#8]
LDM             R0, {R0,R3}
LDR             R2, [R2,#0x18]
VLDR            S16, [R4,#0x14]
UXTH            R1, R1
UXTH            R0, R0
STR             R0, [SP,#0x68+var_68]; int
AND             R0, R3, #0xFF
STR             R0, [SP,#0x68+var_50]
CMP             R2, #0
LDR             R0, [R4,#0x30]
MOVNE           R5, #1
MOVEQ           R5, #0
CMP             R0, #0
LDR             R0, [R4,#0x34]
MOVNE           R9, #1
MOVEQ           R9, #0
CMP             R0, #0
LDR             R0, =off_6CE970
LDR             R2, [R4,#0x2C]
LDR             R3, [R4,#0x1C]
MOVNE           R11, #1
LDR             R0, [R0]
AND             R6, R3, #0xFF
AND             R8, R2, #0xFF
MOVEQ           R11, #0
BL              sub_52F480
STR             R0, [SP,#0x68+var_4C]
LDR             R0, =off_6CE970
LDR             R1, [SP,#0x68+var_68]
LDR             R0, [R0]
BL              sub_52F480
ADD             R1, SP, #0x68+var_60
MOV             R3, R0; int
STM             R1, {R6-R9}
CMP             R11, #0
ADD             R0, SP, #0x68+var_48; int
VSTR            S16, [SP,#0x68+var_68]
STR             R5, [SP,#0x68+var_64]; float
LDR             R1, [SP,#0x68+var_4C]; int
LDR             R2, [SP,#0x68+var_50]; int
BEQ             loc_212468
BL              sub_4F1B20
B               loc_212470
NOP
BL              sub_4F1E18
LDRH            R0, [R4]
VLDR            S0, [SP,#0x68+var_48]
CMP             R0, #0x9E
BNE             loc_21249C
VCVT.F32.S32    S0, S0
CMP             R10, #0
LDRH            R0, [R4,#2]
LDR             R1, [SP,#0x68+var_30]
ADDNE           R2, R10, #4
MOVEQ           R2, #0
BL              sub_145730
ADD             SP, SP, #0x30 ; '0'
MOV             R0, #0
VPOP            {D8}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
