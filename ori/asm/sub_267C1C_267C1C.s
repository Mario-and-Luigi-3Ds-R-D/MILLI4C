PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R1, [R0,#8]
LDR             R6, =0xFFE683CC
LDR             R2, =0x30187
LDR             R0, [R5]
SUB             SP, SP, #0x10
MOV             R3, #0
SUB             R0, R0, R6
BL              sub_503720
LDR             R0, [R5]
LDR             R1, [R4,#8]
LDR             R2, =0x30188
MOV             R3, #0
SUB             R0, R0, R6
BL              sub_503720
LDR             R0, [R4,#4]
MOV             R3, #1
LDR             R0, [R0,#0xC]
ADD             R1, R0, #0x28 ; '('
LDR             R0, [R0,#0x30]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x20+var_14]
ADD             R0, SP, #0x20+var_1C
STM             R0, {R1,R2}
MOV             R1, #0
LDR             R0, [R4,#4]
ADD             R2, SP, #0x20+var_1C
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x380]
STR             R0, [SP,#0x20+var_18]
LDR             R0, [R5]
STR             R1, [SP,#0x20+var_20]
ADD             R1, R3, #0x2D4
BL              sub_52AEA8
LDR             R0, [R4,#8]
BL              sub_5C55B8
CMP             R0, #9
MOVNE           R0, #0xB
BEQ             loc_267CCC
STRB            R0, [R4,#0xC]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDRB            R0, [R4,#0x84]
CMP             R0, #0
BEQ             loc_267CE8
LDRB            R0, [R4,#0x7C]
CMP             R0, #0
MOVEQ           R0, #0x16
BEQ             loc_267CC0
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R1, #1
B               sub_268110
