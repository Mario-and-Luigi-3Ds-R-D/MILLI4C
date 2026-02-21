PUSH            {R0-R11,LR}
SUB             SP, SP, #0x64
MOV             R7, R2
MOV             R9, R3
MOV             R11, R0
LDR             R0, [SP,#0x98+var_30]
LDR             R0, [R0,#0x1C]
STR             R0, [SP,#0x98+var_68]
MOV             R0, #0
STR             R0, [SP,#0x98+var_94]
LDR             R0, [SP,#0x98+var_68]
CMP             R0, #0
BLE             loc_146D6C
LDR             R0, [SP,#0x98+var_30]
LDR             R1, [SP,#0x98+var_94]
LDR             R2, [R0,#0x20]!
CMP             R2, #0
ADDNE           R0, R0, R2
MOVEQ           R0, #0
CMP             R0, #0
BEQ             loc_146AFC
ADD             R0, R0, R1,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, #0
ADDNE           R0, R0, R1
STR             R0, [SP,#0x98+var_5C]
LDR             R0, [R0,#0xBC]
STR             R0, [SP,#0x98+var_64]
MOV             R0, #0
STR             R0, [SP,#0x98+var_90]
LDR             R0, [SP,#0x98+var_64]
CMP             R0, #0
BLE             loc_146D54
LDR             R0, [SP,#0x98+var_5C]
LDR             R1, [SP,#0x98+var_90]
LDR             R2, [R0,#0xC0]!
CMP             R2, #0
ADDNE           R0, R0, R2
MOVEQ           R0, #0
CMP             R0, #0
BEQ             loc_146B50
ADD             R0, R0, R1,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, #0
ADDNE           R0, R0, R1
STR             R0, [SP,#0x98+var_54]
MOV             R0, #0
STR             R0, [SP,#0x98+var_44]
LDR             R1, =sub_143790
MOV             R3, #8
MOV             R2, #4
ADD             R0, SP, #0x98+var_88
BLX             sub_1002F4
MOV             R0, #0
MOV             R10, R0
STR             R0, [SP,#0x98+var_98]
MOV             R0, #3
STR             R0, [SP,#0x98+var_58]
LDR             R1, [SP,#0x98+var_54]
MOV             R0, #0x274
ADD             R0, R0, R10,LSL#2
ADD             R0, R0, R1
LDR             R1, [R0]
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
BEQ             loc_146CA4
LDR             R1, [R0,#8]!
CMP             R1, #0
MOVEQ           R0, #0
ADDNE           R0, R0, R1
MOVS            R6, R0
BEQ             loc_146CA4
LDR             R2, [R6]
MOV             R1, #0x20000004
BICS            R1, R1, R2
MOVNE           R6, #0
CMP             R6, #0
BEQ             loc_146C70
CMP             R9, #0
MOV             R4, #0
BLS             loc_146C70
LDR             R1, [R6,#0x18]
ADD             R0, R6, #0x18
ADD             R8, SP, #0x98+var_60
CMP             R1, #0
ADDNE           R5, R1, R0
LDR             R0, [R7,R4,LSL#2]
MOVEQ           R5, #0
LDR             R1, [R0,#0x28]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, #0
CMP             R0, #0
CMPNE           R5, #0
STR             R0, [SP,#0x98+var_60]
BEQ             loc_146C58
MOV             R0, R5
BL              sub_300168
MOV             R2, R0
MOV             R1, R5
MOV             R0, R8
BL              sub_5E0EC0
CMP             R0, #0
NOP
BEQ             loc_146C58
LDR             R1, [R0,#0xC]!
CMP             R1, #0
ADDNE           R0, R0, R1
BNE             loc_146C5C
MOV             R0, #0
CMP             R0, #0
BNE             loc_146C70
ADD             R4, R4, #1
CMP             R4, R9
BCC             loc_146BE8
CMP             R0, #0
BEQ             loc_146C88
LDR             R2, [R0]
MOV             R1, #0x20000001
BICS            R1, R1, R2
MOVNE           R0, #0
LDR             R1, [R0,#0x34]
CMP             R1, #0xA
CMPNE           R1, #0xB
LDRNE           R0, [SP,#0x98+var_44]
ORRNE           R0, R0, #2
BEQ             loc_146CC4
STR             R0, [SP,#0x98+var_44]
LDR             R0, [SP,#0x98+var_58]
ADD             R10, R10, #1
CMP             R0, R10
BGT             loc_146B84
LDR             R0, [SP,#0x98+var_44]
CMP             R0, #3
BNE             loc_146D3C
B               loc_146CE8
LDR             R2, [SP,#0x98+var_98]
ADD             R1, SP, #0x98+var_88
ADD             R1, R1, R2,LSL#2
ADD             R2, R2, #1
STR             R2, [SP,#0x98+var_98]
STR             R0, [R1]
LDR             R0, [SP,#0x98+var_44]
ORR             R0, R0, #1
B               loc_146CA0
LDR             R0, [SP,#0x98+var_98]
CMP             R0, #0
MOVLE           R0, #0
BLE             loc_146D08
AND             R0, R0, #1
CMP             R0, #1
LDREQ           R1, [SP,#0x98+var_88]
STREQ           R11, [R1,#0x30]
LDR             R1, [SP,#0x98+var_98]
CMP             R0, R1
ADDLT           R1, SP, #0x98+var_88
BGE             loc_146D3C
LDR             R2, [R1,R0,LSL#2]
ADD             R3, R1, R0,LSL#2
ADD             R0, R0, #2
STR             R11, [R2,#0x30]
LDR             R2, [SP,#0x98+var_98]
CMP             R0, R2
LDR             R2, [R3,#4]
STR             R11, [R2,#0x30]
BLT             loc_146D18
LDR             R0, [SP,#0x98+var_90]
LDR             R1, [SP,#0x98+var_64]
ADD             R0, R0, #1
CMP             R0, R1
STR             R0, [SP,#0x98+var_90]
BLT             loc_146B1C
LDR             R0, [SP,#0x98+var_94]
LDR             R1, [SP,#0x98+var_68]
ADD             R0, R0, #1
CMP             R0, R1
STR             R0, [SP,#0x98+var_94]
BLT             loc_146AC8
ADD             SP, SP, #0x74 ; 't'
POP             {R4-R11,PC}
