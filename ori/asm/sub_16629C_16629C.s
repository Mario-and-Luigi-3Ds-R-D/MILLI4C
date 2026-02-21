ADD             R1, R0, #0x13C00
PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x6D00
ADD             R1, R1, #0x5C ; '\'
MOV             R5, R0
BL              sub_194A78
MOV             R1, #0
MOV             R0, R5
STR             R1, [R0,#0xAC]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0x60]
ADD             R1, R0, #0x960
MOV             R0, R5
BL              sub_19483C
MOV             R1, #0
MOV             R0, R5
BL              sub_194BC0
LDR             R0, =0x16DA4
LDR             R0, [R0,R4]
CMP             R0, #0
ADDNE           R1, R0, #0x104
ADD             R0, R4, #0x13800
MOVEQ           R1, #0
ADD             R0, R0, #0x368
BL              sub_2018EC
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E83C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
