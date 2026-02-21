PUSH            {R4-R10,LR}
MOV             R4, R0
BL              sub_2B35D4
LDR             R0, =0x16BEC
LDR             R0, [R0,R4]
CMP             R0, #0
BEQ             locret_16665C
LDR             R1, =0x13CFC
MOV             R0, R4
LDR             R2, =0x49249249
LDR             R4, [R1,R4]
MOV             R1, #0
MOV             R12, R1
LDR             R4, [R4,#0x1C]
UMLAL           R2, R1, R4, R2
MOV             R2, #0
MOV             R1, R1,LSR#4
ADD             R1, R1, #1
CMP             R1, #0
BLS             loc_166654
ADD             R3, R0, #0x16800
MOV             R6, #4
MOV             R4, #0xFFFFFFFF
MOV             R7, #0x30 ; '0'
ADD             R3, R3, #0x3EC
ADD             R5, R2, R2,LSL#2
LDR             R8, [R3]
ADD             R5, R5, R2,LSL#3
ADD             R2, R2, #1
ADD             R9, R6, R5,LSL#2
STR             R12, [R8,R5,LSL#2]
LDR             R8, [R3]
ADD             R5, R7, R5,LSL#2
CMP             R2, R1
STR             R12, [R8,R9]
LDR             R8, [R3]
STRH            R4, [R8,R5]
BCC             loc_166620
POP             {R4-R10,LR}
B               sub_165BC8
POP             {R4-R10,PC}
