PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R0, #0
SUB             SP, SP, #0x44
MOV             R5, R1
MOV             R3, SP
MOV             R2, R0
MOV             R1, R0
STRB            R0, [SP,#0x58+var_58]
STR             R0, [SP,#0x58+var_54]
STR             R0, [SP,#0x58+var_50]
STR             R0, [SP,#0x58+var_4C]
ADD             R12, R3, R2,LSL#2
ADD             R2, R2, #1
ADD             R1, R1, #2
ADD             R6, R3, R2,LSL#2
STR             R0, [R12,#0x10]
CMP             R1, #0xC
ADD             R2, R2, #1
STR             R0, [R6,#0x10]
BCC             loc_111DA8
LDR             R0, =0x136D4
MOV             R7, #1
ADD             R1, R4, #0x13400
ADD             R1, R1, #0x278
STRB            R7, [SP,#0x58+var_54]
STR             R1, [SP,#0x58+var_48]
STRB            R7, [SP,#0x58+var_58]
STRB            R7, [R0,R4]
ADD             R0, R4, #0x12C00
ADD             R0, R0, #0x29C
MOV             R6, R0
BL              sub_1185E0
MOV             R0, R5
NOP
BL              sub_122B64
MOV             R2, R0
MOV             R1, SP
MOV             R0, R6
BL              sub_10DB58
ADD             R0, R4, #0x13000
ADD             R0, R0, #0x6D0
LDR             R1, [R0]
ORR             R1, R1, #0x100000
STR             R1, [R0]
LDR             R0, =0xFFFEC92B
SUB             R0, R4, R0
STRB            R7, [R0]
ADD             SP, SP, #0x44 ; 'D'
POP             {R4-R7,PC}
