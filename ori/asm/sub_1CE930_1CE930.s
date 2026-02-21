LDR             R2, =0x5000037
PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0x23000
MOV             R1, #0x40000
STM             R4, {R0-R2}
MOV             R5, #0
STRB            R5, [R4,#0xC]
STRB            R5, [R4,#0xD]
STRB            R5, [R4,#0xF]
STRB            R5, [R4,#0x10]
STRB            R5, [R4,#0x11]
STRB            R5, [R4,#0x12]
STRB            R5, [R4,#0x13]
STRB            R5, [R4,#0x14]
STRB            R5, [R4,#0x15]
ADD             R0, R4, #0x1C
MOV             R2, #0x10
MOV             R1, R5
STR             R5, [R4,#0x18]
BL              sub_110BE4
STRH            R5, [R4,#0x2C]
STRH            R5, [R4,#0x2E]
POP             {R4-R6,PC}
