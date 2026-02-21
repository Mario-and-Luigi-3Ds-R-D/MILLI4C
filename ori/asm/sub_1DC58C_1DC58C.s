PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x8900
ADD             R0, R0, #0x95
SUB             SP, SP, #0xC
LDRB            R0, [R0]
CMP             R0, #4
BNE             loc_1DC614
LDR             R6, =off_6CE970
LDR             R7, =0x138F24
MOV             R2, #0
MOV             R1, #0x14
LDR             R0, [R6]
ADD             R0, R0, R7
BL              sub_571558
MOV             R5, R0
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, #0x15
ADD             R0, R0, R7
BL              sub_571558
MOV             R3, #1
MOV             R1, #0
MOV             R2, R0
ADD             R0, R4, #0x10C00
STMEA           SP, {R1,R3}
MOV             R1, R5
ADD             R0, R0, #0x254
BL              sub_2C6840
LDR             R2, =off_656BEC
ADD             R0, R4, #0x20800
ADD             R0, R0, #0x2BC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
