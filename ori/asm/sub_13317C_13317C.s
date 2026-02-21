PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R3, [R4,#0xC]
MOV             R5, R2
MOV             R2, R2,LSL#2
ADD             R0, R0, R3,LSL#2
BL              sub_2FF3D8
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#4]
ADD             R0, R0, R5
CMP             R0, R1
STR             R0, [R4,#0xC]
MOVGE           R0, #0
STRGE           R0, [R4,#0xC]
POP             {R4-R6,PC}
