PUSH            {R4-R12,LR}
MOV             R4, #0
MOV             R6, R0
MOV             R11, R4
LDR             R10, =dword_6ED9B8
ADD             R8, R6, R4,LSL#2
ADD             R7, R8, #0x13C00
ADD             R0, R6, R4,LSL#3
ADD             R7, R7, #0xBC
ADD             R5, R0, #0x13C00
LDR             R0, [R7]
ADD             R5, R5, #0xAC
CMP             R0, #0
STREQ           R11, [R5,#4]
BEQ             loc_2B0364
MOV             R3, #0x800000
MOV             R2, #0
MOV             R1, R10
BL              sub_1143B4
ADD             R8, R8, #0x13000
ADD             R8, R8, #0xC70
LDR             R2, [R7]
LDR             R1, [R8]
MOV             R9, R0
BL              sub_1103A4
STR             R9, [R5]
LDR             R0, [R7]
STR             R0, [R5,#4]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_2B0308
POP             {R4-R12,PC}
