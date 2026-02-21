PUSH            {R4-R8,LR}
MOV             R6, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0,#0x3C]
LDR             R4, [R6,#0x38]
CMP             R0, R4
BEQ             loc_29A364
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_299B54
LDR             R0, [R6,#0x3C]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_29A348
ADD             R0, R6, #0x38 ; '8'
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_29A388
LDR             R1, [R0]
LDRB            R1, [R1,#6]
CMP             R1, #4
ADDNE           R0, R0, #0xC
BNE             loc_29A36C
CMP             R0, R5
BEQ             loc_29A454
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R7, R0
BEQ             loc_29A450
LDR             R0, [R4]
LDRB            R1, [R0,#6]
CMP             R1, #4
BEQ             loc_29A444
LDR             R8, [R7]
CMP             R8, R0
BEQ             loc_29A440
LDR             R0, [R7,#8]
ADD             R2, R7, #4
CMP             R0, R2
BNE             loc_29A4F8
CMP             R8, #0
BEQ             loc_29A404
LDR             R0, [R8,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R8, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R3, [R1,#4]
CMPNE           R3, R0
BEQ             loc_29A440
LDM             R0, {R2,R12}
STR             R12, [R2,#4]
STR             R2, [R12]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_29A3A0
MOV             R0, R7
LDR             R5, [R6,#0x3C]
CMP             R0, R5
BEQ             loc_29A4F0
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_29A4EC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_29A4D8
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_29A4D8
LDR             R0, [R8,#0x444]
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             R0, R8, #0x48 ; 'H'
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x48 ; 'H'
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_29A484
STR             R7, [R6,#0x3C]
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R2, [R7,#4]
ADD             R1, R7, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R7,#4]
STR             R1, [R7,#8]
B               loc_29A404
