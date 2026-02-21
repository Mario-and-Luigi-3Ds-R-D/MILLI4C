PUSH            {R4-R9,LR}
SUB             SP, SP, #0x54
LDR             R4, [R0,#8]
ADD             R0, SP, #0x70+var_68
BL              sub_590F1C
LDR             R12, =0x183308
LDR             R7, =0x1210D4
ADD             R5, R4, #0x88
ADD             R1, R12, #0x168
ADD             R1, R1, R4
ADD             R6, R4, #0x1E4
ADD             R7, R7, R4
ADD             R12, R12, R4
ADD             LR, SP, #0x70+var_54
STR             R1, [SP,#0x70+var_58]
STR             R5, [SP,#0x70+var_68]
STR             R6, [SP,#0x70+var_64]
STR             R7, [SP,#0x70+var_60]
STR             R12, [SP,#0x70+var_5C]
MOV             R0, #0x14
MOV             R2, #0x40 ; '@'
STM             LR, {R0,R2}
MOV             R2, #0x60000
STR             R0, [SP,#0x70+var_4C]
MOV             R0, #0x2000
STR             R0, [SP,#0x70+var_24]
MOV             R6, #0x154
ADD             LR, SP, #0x70+var_30
STR             R2, [SP,#0x70+var_28]
MOV             R1, #0x300
MOV             R9, #0x400
STR             R6, [SP,#0x70+var_40]
ADD             R2, SP, #0x70+var_48
STM             LR, {R1,R9}
MOV             R3, #0x10
MOV             R8, #0x200
LDR             R0, =0x121B7C
STM             R2, {R3,R8}
ADD             R2, SP, #0x70+var_3C
MOV             R5, #0xFB
MOV             R7, #0xA0
MOV             R12, #4
ADD             R1, SP, #0x70+var_68
ADD             R0, R0, R4
STM             R2, {R5,R7,R12}
BL              sub_5902C0
MOV             R0, #0x20000
STR             R0, [SP,#0x70+var_70]
LDR             R0, =0x139014
LDR             R1, =dword_6ED9B8
MOV             R3, #0
MOV             R2, #4
ADD             R0, R0, R4
BL              sub_1C78E8
ADD             SP, SP, #0x54 ; 'T'
POP             {R4-R9,PC}
