PUSH            {R4-R6,LR}
BL              sub_4F1810
LDR             R2, =off_6BB6C8
MOV             R5, #0
MOV             R1, #0xFF
STR             R2, [R0]
STR             R5, [R0,#0x18]
STR             R5, [R0,#0x1C]
STRB            R1, [R0,#0x20]
STRH            R5, [R0,#0x22]
STRH            R5, [R0,#0x24]
STRB            R5, [R0,#0x26]
MOV             R4, R0
STRB            R5, [R0,#0x27]
MOV             R2, #1
ADD             R0, R0, #0x28 ; '('
MOV             R1, R5
BL              sub_1CCBB4
LDR             R1, =off_6B2A84
ADD             R0, R4, #0x34 ; '4'
STM             R0, {R1,R5}
MOV             R0, R4
POP             {R4-R6,PC}
