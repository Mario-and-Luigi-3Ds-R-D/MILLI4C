PUSH            {R3-R7,LR}
MOV             R5, R1
MOV             R6, R2
LDR             R4, [R0]
MOV             R1, #4
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x1C
MOV             R7, R0
BL              sub_4DC7B4
ADD             R0, R4, #0x33400
STRH            R5, [SP,#0x18+var_18]
MOV             R1, SP
ADD             R0, R0, #0x2A4
STRB            R6, [SP,#0x18+var_16]
BL              sub_4D744C
LDR             R1, =off_63D8F0
LDRD            R0, R1, [R1,#(off_63D908 - 0x63D8F0)]
STRD            R0, R1, [R4,#0xF8]
MOV             R0, R7
BL              sub_4DC824
MOV             R0, #1
STRB            R0, [R4,#0xF1]
POP             {R3-R7,PC}
