PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R4, [R0]
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x1C
MOV             R6, R0
BL              sub_4DC824
MOV             R1, R5
MOV             R0, R6
BL              sub_4DC7B4
LDR             R1, =off_63D8F0
MOV             R0, #1
STRB            R0, [R4,#0xF1]
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4,#0xF8]
POP             {R4-R6,PC}
