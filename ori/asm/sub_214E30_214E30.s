PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R5, =off_6CE970
LDR             R6, =0xA001
LDR             R0, [R5]
MOV             R1, R6
BL              sub_52FACC
LDR             R1, [R4]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R0
MOV             R0, R4
BLX             R3
MOV             R2, #0
MOV             R1, #1
MOV             R0, R4
BL              sub_14B798
MOV             R7, #0
STRB            R7, [R4,#0xF2]
MOV             R1, #0x6000
MOV             R0, R4
STRB            R7, [R4,#0x3F4]
BL              sub_14C3E8
LDR             R0, [R5]
MOV             R2, R4
MOV             R1, #0x6000
BL              sub_52B95C
ADD             R4, R4, #0x410
LDR             R0, [R4,#8]
CMP             R0, #0
BNE             loc_214F00
LDR             R0, [R5]
MOV             R1, R6
BL              sub_52FACC
MOV             R5, R0
ADD             R0, R0, #0xA0
MOV             R6, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x20+var_18]
MOV             R3, #0
MOV             R2, R6
ADD             R0, R4, #4
STR             R7, [SP,#0x20+var_20]
STR             R7, [SP,#0x20+var_1C]
BL              sub_1137FC
MOV             R1, #1
STRB            R1, [R4,#0x73]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
