LDRB            R2, [R0,#0x104]
CMP             R2, #0
BXEQ            LR
PUSH            {R4-R11,LR}
SUB             SP, SP, #0x4C ; 'L'
LDR             R2, [R1]
STR             R2, [SP,#0x70+var_48]
LDR             R2, [R1,#4]
STR             R2, [SP,#0x70+var_44]
LDR             R2, [R1,#8]
STR             R2, [SP,#0x70+var_40]
LDR             R1, [R1,#0xC]
STR             R1, [SP,#0x70+var_3C]
MOV             R1, #0
STR             R1, [SP,#0x70+var_34]
ADD             R1, R0, R1,LSL#2
STR             R1, [SP,#0x70+var_38]
LDR             R2, [SP,#0x70+var_34]
LDR             R8, [R0,#0xB8]
LDR             R6, [R0,#0xC8]
LDR             R5, [R1,#0x7C]
ADD             R2, R0, R2,LSL#3
LDR             R11, [R0,#0xA0]
LDR             R12, [R2,#0x5C]!
ADD             R5, R5, R6,LSL#2
LDR             R4, [R2,#4]
LDR             R7, [R1,#0x3C]
LDR             R9, [R0,#0xB4]
ADD             R4, R4, R8,LSL#2
LDR             R8, [SP,#0x70+var_34]
LDR             R10, [R0,#0xA8]
ADD             R6, SP, #0x70+var_48
LDR             R3, [R1,#0x4C]
LDR             R1, [R1,#0xD0]
LDR             R6, [R6,R8,LSL#2]
ADD             R2, R7, R11,LSL#2
MOV             R7, #0
ADD             R3, R3, R10,LSL#2
ADD             R12, R12, R9,LSL#2
LDR             R8, [R6]
LDR             R11, [R3]
ADD             R7, R7, #1
STR             R8, [R3],#4
LDR             R9, [R12]
LDR             LR, [R0,#0xBC]
CMP             R9, #0
RSBLT           R10, R9, #0
MOVGE           R10, R9
STR             R9, [SP,#0x70+var_68]
MUL             R10, R10, LR
MOV             R10, R10,ASR#7
RSBLT           R10, R10, #0
ADD             R10, R10, R11
STR             R10, [R12],#4
LDR             R9, [R4]
LDR             LR, [R0,#0xC0]
CMP             R9, #0
RSBLT           R10, R9, #0
MOVGE           R10, R9
MUL             R10, R10, LR
MOV             R10, R10,ASR#7
RSBLT           R10, R10, #0
ADD             R11, R11, R10
LDR             R10, [SP,#0x70+var_68]
STR             R11, [R4],#4
LDR             R11, [R0,#0xCC]
SUB             LR, R10, R9
LDR             R10, [R5]
CMP             R10, #0
RSBLT           R9, R10, #0
MOVGE           R9, R10
MUL             R9, R9, R11
MOV             R9, R9,ASR#7
RSBLT           R9, R9, #0
ADD             R9, R9, LR
CMP             R9, #0
STR             R9, [R5],#4
RSBLT           R9, R9, #0
MUL             R9, R9, R11
MOV             R11, R9,ASR#7
RSBLT           R11, R11, #0
LDR             R9, [R0,#0xE8]
SUB             R10, R10, R11
STR             R10, [SP,#0x70+var_68]
LDR             R11, [R2]
LDR             LR, [R0,#0xE0]
LDR             R10, [R0,#0xEC]
STR             R8, [R2],#4
LDR             R8, [SP,#0x70+var_68]
MUL             R11, R11, LR
CMP             R7, #0xA0
MUL             R9, R9, R8
LDR             R8, [R0,#0xE4]
MLA             R1, R1, R10, R9
MOV             R1, R1,ASR#7
MLA             R8, R8, R1, R11
MOV             R8, R8,ASR#7
STR             R8, [R6],#4
BLT             loc_13E864
LDR             R2, [SP,#0x70+var_34]
ADD             R2, R2, #1
STR             R2, [SP,#0x70+var_34]
LDR             R2, [SP,#0x70+var_38]
STR             R1, [R2,#0xD0]
LDR             R1, [SP,#0x70+var_34]
CMP             R1, #2
BLT             loc_13E804
LDR             R2, [R0,#0xA0]
LDR             R3, [R0,#0x9C]
MOV             R1, #0
ADD             R2, R2, #0xA0
CMP             R2, R3
STR             R2, [R0,#0xA0]
STRGE           R1, [R0,#0xA0]
LDR             R2, [R0,#0xA8]
LDR             R3, [R0,#0xA4]
ADD             R2, R2, #0xA0
CMP             R2, R3
STR             R2, [R0,#0xA8]
STRGE           R1, [R0,#0xA8]
LDR             R2, [R0,#0xB4]
LDR             R3, [R0,#0xAC]
ADD             R2, R2, #0xA0
CMP             R2, R3
STR             R2, [R0,#0xB4]
STRGE           R1, [R0,#0xB4]
LDR             R2, [R0,#0xB8]
LDR             R3, [R0,#0xB0]
ADD             R2, R2, #0xA0
CMP             R2, R3
STR             R2, [R0,#0xB8]
STRGE           R1, [R0,#0xB8]
LDR             R2, [R0,#0xC8]
LDR             R3, [R0,#0xC4]
ADD             R2, R2, #0xA0
CMP             R2, R3
STR             R2, [R0,#0xC8]
STRGE           R1, [R0,#0xC8]
ADD             SP, SP, #0x4C ; 'L'
POP             {R4-R11,PC}
