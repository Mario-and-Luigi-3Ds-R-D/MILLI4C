PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_2B5268
LDR             R1, =0x401
ADD             R0, R4, #0x2C4
BL              sub_5994C8
MOV             R3, #0
MOV             R2, R3
MOV             R1, R5
MOV             R0, #0x400000
BL              sub_1143B4
MOV             R1, R0
ADD             R0, R4, #0x13C00
POP             {R4-R6,LR}
MOV             R2, #0x400000
ADD             R0, R0, #0x5C ; '\'
B               sub_108CA0
