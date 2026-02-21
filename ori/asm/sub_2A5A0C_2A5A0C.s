PUSH            {R4-R6,LR}
SUB             SP, SP, #0x10
MOV             R5, R1
MOV             R4, R0
BL              sub_592EDC
LDR             R0, =off_6CE970
MOV             R1, R5
LDR             R0, [R0]
BL              sub_52FACC
MOV             R5, R0
ADD             R0, R0, #0xA0
MOV             R6, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R5, #0
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x20+var_18]
MOV             R3, R5
MOV             R2, R6
MOV             R0, R4
STR             R5, [SP,#0x20+var_20]
STR             R5, [SP,#0x20+var_1C]
BL              sub_1137FC
MOV             R0, #1
MOV             R1, #5
STRB            R0, [R4,#0x68]
STRB            R1, [R4,#0x6A]
STRB            R5, [R4,#0x69]
STRB            R0, [R4,#0x6D]
MOV             R1, #0xFF
STRB            R1, [R4,#0x6E]
MOV             R0, #3
STRB            R5, [R4,#0x71]
STRB            R0, [R4,#0x6F]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
