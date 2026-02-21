PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R7, R2
LDR             R0, [R0,#0x1B4]
LDR             R2, =0xFFFE
MOV             R4, R1
TST             R0, #0x200000
MOVEQ           R0, R2
BEQ             locret_19DBC0
LDRH            R0, [R6,#0xA]
LDR             R1, [R6,#4]
MOV             R5, #0
CMP             R0, #0
ADDNE           R1, R1, #0xA
BEQ             loc_19DBC4
LDRB            R12, [R1]
ADD             R1, R1, #0x10
CMP             R12, R4
ADDEQ           R12, R5, #1
UXTHEQ          R5, R12
SUBS            R0, R0, #1
BNE             loc_19DB48
CMP             R5, #0
BEQ             loc_19DBC4
LDR             R1, =dword_6ED9B8
MOV             R0, R5,LSL#2
MOV             R2, #0
BL              sub_1143B4
STR             R0, [R7]
LDRH            R1, [R6,#0xA]
LDR             R12, [R6,#4]
CMP             R1, #0
MOVNE           R3, #0
ADDNE           R2, R12, #0xA
BEQ             loc_19DBBC
LDRB            R6, [R2]
CMP             R6, R4
BNE             loc_19DBAC
ADD             R6, R12, R3,LSL#4
STR             R6, [R0],#4
SUBS            R1, R1, #1
ADD             R2, R2, #0x10
ADD             R3, R3, #1
BNE             loc_19DB98
MOV             R0, R5
POP             {R4-R8,PC}
MOV             R0, #0
STR             R0, [R7]
MOV             R0, R2
POP             {R4-R8,PC}
