PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6C3050
MOV             R2, #1
STRD            R0, R1, [R4]
MOV             R0, R1,LSL#4
MOV             R1, R2
BL              sub_12477C
MOV             R1, #0
STR             R0, [R4,#8]
STRD            R0, R1, [R4,#0xC]
STR             R1, [R4,#0x14]
STR             R1, [R4,#0x18]
MOV             R6, #0x400
MOV             R0, #0x1000
MOV             R2, #1
MOV             R1, #2
BL              sub_12477C
ADD             R1, R4, #0x10
MOV             R5, R0
LDM             R1, {R1,R2}
CMP             R1, R2
BEQ             loc_11DC64
CMP             R0, #0
LDRNE           R12, [R1]
ADD             R1, R1, #4
STRNE           R12, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_11DC48
LDR             R0, [R4,#0x10]
BL              sub_1361A4
LDR             R0, [R4,#0x14]
LDR             R1, [R4,#0x10]
STR             R5, [R4,#0x10]
SUB             R0, R0, R1
BIC             R0, R0, #3
ADD             R1, R5, R6,LSL#2
ADD             R0, R0, R5
STRD            R0, R1, [R4,#0x14]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
MOV             R2, R1,LSL#4
MOV             R1, #0
BL              sub_12B584
MOV             R0, R4
POP             {R4-R6,PC}
