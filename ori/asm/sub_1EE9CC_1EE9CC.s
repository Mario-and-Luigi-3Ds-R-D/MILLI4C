PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R1, R5, #0xBC
LDRB            R0, [R0,#0x14C]
CMP             R0, #0
SUBNE           R0, R0, #1
STRBNE          R0, [R5,#0x14C]
LDM             R1, {R1,R2}
LDR             R0, [R5,#0x154]
ADD             R4, R1, #0x2C4
ADD             R6, R2, #0x2C4
CMP             R0, #0
BEQ             loc_1EEA24
CMP             R0, #1
BEQ             loc_1EEA54
CMP             R0, #2
MOVEQ           R0, #3
BEQ             loc_1EEA98
CMP             R0, #3
MOVEQ           R0, #0xFFFFFFFF
BEQ             loc_1EEA98
B               loc_1EEA9C
MOV             R7, #5
MOV             R2, R7
MOV             R0, R4
MOV             R1, #0
BL              sub_5996A0
MOV             R2, R7
MOV             R0, R6
MOV             R1, #0xFF
BL              sub_5996A0
LDR             R0, [R5,#0x154]
ADD             R0, R0, #1
STR             R0, [R5,#0x154]
MOV             R0, R4
BL              sub_598FD8
MOV             R0, R6
NOP
BL              sub_598FD8
LDR             R0, =0x1380C
LDRH            R0, [R0,R4]
CMP             R0, #0
BNE             loc_1EEA9C
LDR             R0, =0x1380C
LDRH            R0, [R0,R6]
CMP             R0, #0
BNE             loc_1EEA9C
LDR             R0, [R5,#0x154]
ADD             R0, R0, #1
STR             R0, [R5,#0x154]
B               loc_1EEA9C
STR             R0, [R5,#0x154]
LDR             R0, [R5,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1EEAC4
LDR             R0, [R5,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R5,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1EEAEC
LDR             R0, [R5,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDR             R0, [R5,#0x154]
CMP             R0, #0
BGE             locret_1EEB8C
LDRB            R0, [R5,#0x14C]
CMP             R0, #0
BNE             locret_1EEB8C
LDR             R0, [R5]
LDR             R1, [R0,#0xCC]
MOV             R0, R5
BLX             R1
BL              sub_59D118
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0xC4]
MOV             R0, R5
BLX             R2
BL              sub_3213EC
MOV             R4, #0
ADD             R6, R5, R4,LSL#2
LDR             R0, [R6,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x98]
BLX             R1
LDR             R0, [R6,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x9C]
BLX             R1
LDR             R0, [R6,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1EEB34
LDR             R0, [R5]
MOV             R1, #0
LDR             R2, [R0,#0xBC]
MOV             R0, R5
POP             {R4-R8,LR}
BX              R2
POP             {R4-R8,PC}
