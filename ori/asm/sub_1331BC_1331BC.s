PUSH            {R4-R6,LR}
MOV             R4, R1
LDRH            R1, [R2,#2]
ADD             R0, R0, R4
MOV             R5, R2
CMP             R1, #0
MOVNE           R1, #1
STRB            R1, [R0,#4]
BL              sub_12911C
MOV             R2, R5
MOV             R1, R4
POP             {R4-R6,LR}
NOP
LDRH            R3, [R2]
ADD             R12, R1, R1,LSL#2
TST             R3, #1
LDRHNE          R3, [R2,#2]
ADD             R0, R0, R12,LSL#2
STRHNE          R3, [R0,#2]
LDRH            R3, [R2]
TST             R3, #4
BEQ             loc_13323C
LDRH            R3, [R2,#6]
STRH            R3, [R0,#6]
LDRH            R3, [R2,#0xC]
STRH            R3, [R0,#0xC]
LDRH            R3, [R2,#0xE]
STRH            R3, [R0,#0xE]
LDRH            R3, [R2,#0x10]
STRH            R3, [R0,#0x10]
LDRH            R3, [R2,#0x12]
STRH            R3, [R0,#0x12]
LDRH            R3, [R2]
TST             R3, #2
LDRNE           R3, [R2,#8]
STRNE           R3, [R0,#8]
LDR             R0, =dword_70EE68
B               sub_13339C
