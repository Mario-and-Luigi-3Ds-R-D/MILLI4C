PUSH            {R4-R10,LR}
MOV             R5, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDRB            R0, [R0,#0x1A]
CMP             R0, #3
BEQ             loc_25C5A0
CMP             R0, #2
BNE             loc_25C438
LDRB            R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_25C424
CMP             R0, #1
BEQ             loc_25C430
CMP             R0, #2
BNE             loc_25C438
LDRD            R0, R1, [R5,#0xC]
CMP             R0, R1
BNE             loc_25C438
MOV             R0, #3
STRB            R0, [R5,#0x1A]
LDR             R0, [R5,#0x10]
LDR             R4, [R5,#0xC]
CMP             R0, R4
BEQ             loc_25C464
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_25CAD8
LDR             R0, [R5,#0x10]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_25C448
ADD             R0, R5, #0xC
LDM             R0, {R0,R7}
CMP             R0, R7
BEQ             loc_25C488
LDR             R1, [R0]
LDRB            R1, [R1]
CMP             R1, #4
ADDNE           R0, R0, #0xC
BNE             loc_25C46C
CMP             R0, R7
MOV             R6, R0
ADDNE           R4, R6, #0xC
CMPNE           R4, R7
MOVNE           R9, #0
BEQ             loc_25C568
LDR             R0, [R4]
LDRB            R1, [R0]
CMP             R1, #4
BEQ             loc_25C55C
LDR             R8, [R6]
CMP             R8, R0
BEQ             loc_25C558
LDR             R1, [R6,#8]
ADD             R2, R6, #4
CMP             R1, R2
BNE             loc_25C5A8
CMP             R8, #0
BEQ             loc_25C51C
LDR             R0, [R8,#0x7EC]
CMP             R0, #0
BEQ             loc_25C4E8
BL              sub_533330
STR             R9, [R8,#0x7EC]
LDR             R0, [R8,#0x7F0]
CMP             R0, #0
BEQ             loc_25C4FC
BL              sub_533330
STR             R9, [R8,#0x7F0]
ADD             R0, R8, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R3, [R6]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_25C558
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R7
BNE             loc_25C4A0
LDR             R1, [R5,#0x10]
CMP             R6, R1
BEQ             loc_25C5A0
LDR             R2, =0x2AAAAAAB
SUB             R0, R1, R6
SMULL           R2, R0, R2, R0
MOV             R2, R0,ASR#1
SUB             R0, R2, R0,ASR#31
MOV             R2, #0
SUB             R0, R0, R0,LSL#2
ADD             R4, R1, R0,LSL#2
MOV             R0, R4
BL              sub_628F1C
STR             R4, [R5,#0x10]
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_25C51C
