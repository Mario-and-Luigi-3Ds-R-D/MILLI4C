PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, =sub_14F3EC
MOV             R3, #2
MOV             R2, #0x3F4
ADD             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R5, #0
STR             R5, [R4,#0x14]
MOV             R2, R5
LDRD            R0, R1, [R4,#0xC]
BL              sub_628F1C
STR             R5, [R4,#0xC]
STR             R5, [R4,#0x10]
LDR             R0, [R4,#8]
STR             R5, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R2, #0
LDRD            R0, R1, [R4,#0xC]
BL              sub_628F1C
LDR             R0, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
MOV             R0, R4
POP             {R4-R6,PC}
