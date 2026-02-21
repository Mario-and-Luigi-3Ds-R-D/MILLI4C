PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
SUB             SP, SP, #8
MOV             R6, R1
LDR             R0, [R0]
BL              sub_1E45C8
MOV             R5, R0
MOV             R0, #0
ADD             R4, R4, #0x14400
ADD             R4, R4, #8
MOV             R2, #0
STR             R0, [SP,#0x18+var_18]
STR             R0, [SP,#0x18+var_14]
LDR             R0, [R4]
MOV             R3, #0x25 ; '%'
MOV             R1, R2
BL              sub_2FC388
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x198]
MOV             R0, R5
BLX             R3
LDR             R0, [R4]
ADD             SP, SP, #8
MOV             R3, R6
POP             {R4-R6,LR}
MOV             R2, #0
MOV             R1, #1
B               sub_59AD78
