PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0x3C
ADD             R9, SP, #0x60+var_60
LDRH            R3, [R0]
LDRH            R5, [R4,#2]
CMP             R3, #0
MOV             R0, R3,LSL#1
ADD             R0, R0, #7
BIC             R0, R0, #7
SUB             SP, SP, R0
MOV             R8, SP
SUB             SP, SP, R0
MOV             R7, SP
ADD             R0, R7, R3,LSL#1
STR             SP, [R9,#4]
ADD             R11, R8, R3,LSL#1
STR             R0, [R9,#0x20]
STR             R11, [R9,#0x10]
BEQ             loc_203BA0
TST             R3, #1
MOV             R0, #0
SUB             R1, R7, #2
SUB             R2, R8, #2
BEQ             loc_203B74
MOV             R12, #0
STRH            R12, [R1,#2]!
MOV             R0, #1
STRH            R12, [R2,#2]!
MOVS            R3, R3,LSR#1
BEQ             loc_203BA0
STRH            R0, [R1,#2]
ADD             R12, R0, #1
STRH            R0, [R2,#2]
STRH            R12, [R1,#4]!
UXTH            R12, R12
SUBS            R3, R3, #1
ADD             R0, R0, #2
STRH            R12, [R2,#4]!
BNE             loc_203B7C
CMP             R8, R11
ADDNE           R6, R8, #2
CMPNE           R6, R11
BEQ             loc_203BEC
SUB             R2, R6, R8
MOV             R1, #1
ADD             R1, R1, R2,ASR#1
LDR             R0, =dword_6D1F40
UXTH            R10, R1
BL              sub_546DB0
MUL             R0, R0, R10
LDRH            R1, [R6]
MOV             R0, R0,LSR#16
ADD             R0, R8, R0,LSL#1
LDRH            R2, [R0]
STRH            R2, [R6],#2
CMP             R6, R11
STRH            R1, [R0]
BNE             loc_203BB0
LDR             R0, [R9,#0x10]
CMP             R8, R0
BEQ             loc_203CBC
LDR             R0, [R9,#0x20]
LDRH            R1, [R8]
MOV             LR, R7
CMP             LR, R0
LDRHNE          R2, [LR]
CMPNE           R2, R1
ADDNE           LR, LR, #2
BNE             loc_203C04
CMP             R7, LR
BEQ             loc_203CA8
LDR             R0, [R9,#4]
CMP             R5, #0
SUB             R1, LR, R0
SUB             R0, R7, R0
MOV             R11, R1,ASR#1
MOV             R1, R0,ASR#1
MOV             R0, #0
BLS             loc_203C98
LDRH            R10, [R4,#2]
UXTH            R2, R11
UXTH            R12, R0
LDR             R3, [R4,#4]
MLA             R2, R2, R10, R12
UXTH            R6, R0
ADD             R12, R3, R2,LSL#2
VLDR            S0, [R12]
UXTH            R12, R1
MLA             R12, R12, R10, R6
LDR             R12, [R3,R12,LSL#2]
STR             R12, [R3,R2,LSL#2]
LDRH            R12, [R4,#2]
UXTH            R2, R1
UXTH            R3, R0
ADD             R0, R0, #1
MLA             R2, R2, R12, R3
LDR             R3, [R4,#4]
CMP             R5, R0
ADD             R2, R3, R2,LSL#2
VSTR            S0, [R2]
BHI             loc_203C40
LDRH            R1, [LR]
LDRH            R0, [R7]
STRH            R1, [R7]
STRH            R0, [LR]
LDR             R0, [R9,#0x10]
ADD             R8, R8, #2
ADD             R7, R7, #2
CMP             R8, R0
BNE             loc_203BF8
ADD             SP, R9, #0x3C ; '<'
POP             {R4-R11,PC}
