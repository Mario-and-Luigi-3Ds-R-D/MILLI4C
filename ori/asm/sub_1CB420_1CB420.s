PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R5, =off_6CE118
LDR             R0, [R5]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0xC8
BL              sub_1C7058
LDR             R0, [R5]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0xF4
BL              sub_587F70
MOV             R8, #1
LDR             R6, =off_6CE970
MOV             R9, #0
STRB            R8, [R4,#8]
STRB            R9, [R4,#9]
LDR             R1, =sub_10D4F0
LDR             R2, [R6]
LDR             R0, [R5]
LDR             R7, [R2,R1]
LDR             R5, [R0,#8]!
MOV             R1, SP
ADD             R0, R0, #0xC00
BL              sub_5D46D4
VLDR            S0, [R5]
MOV             R1, SP
ADD             R0, R7, #0x1DC
BL              sub_5A1FC8
LDR             R0, =0xFFE683CC
LDR             R12, [R6]
LDR             R2, =0x301B1
MOV             R3, #0
MOV             R1, R7
SUB             R0, R12, R0
BL              sub_503720
MOV             R6, R0
LDR             R0, [R4,#0xF4]
ADD             R5, R4, #0xF4
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x11
MOV             R0, R7
STRNE           R5, [R6,#0x64]
BL              sub_14C548
STRB            R8, [R7,#0xF3]
STRB            R9, [R4,#0xA]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
