PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #3
MOV             R5, R1
STRB            R0, [R4,#0x1CD]
LDM             R2, {R0-R2}
MOV             R6, R3
ADD             R3, R4, #0x1D0
STM             R3, {R0-R2}
BL              sub_463584
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x1E4]
ADD             R0, R4, #0x1DC
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x1F0
LDR             R0, [R0,#8]
STM             R3, {R0,R5}
ADD             R0, R4, #0x1E8
STM             R0, {R1,R2}
STRB            R6, [R4,#0x1F8]
POP             {R4-R6,PC}
