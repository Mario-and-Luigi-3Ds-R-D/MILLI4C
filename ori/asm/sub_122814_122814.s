PUSH            {R4-R8,LR}
MOV             R4, R0
MOVS            R0, R3
ADD             R3, SP, #0x18+arg_0
MOVEQ           R0, #0
LDM             R3, {R5-R7}
STM             R4, {R1,R2}
BEQ             loc_12283C
BL              sub_122B64
MOV             R0, R0,LSR#3
STR             R0, [R4,#8]
STRB            R5, [R4,#0x10]
STRH            R6, [R4,#0xE]
STRH            R7, [R4,#0xC]
POP             {R4-R8,PC}
