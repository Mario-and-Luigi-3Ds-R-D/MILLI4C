PUSH            {R4-R12,LR}
MOV             R4, R0
MOV             R7, R1
LDR             R9, =off_6CDA80
LDR             R0, [R9]
BL              sub_5C96FC
ADD             R8, R4, #0x400
CMP             R0, #0
MOV             R10, #0
MOV             R11, #4
ADD             R8, R8, #0x6C ; 'l'
ADD             R5, R4, #0x400
ADD             R6, R4, #0x18C0
BEQ             loc_22B704
STRB            R11, [R4,#0x45C]
MOV             R0, R4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
STR             R10, [R4,#0x460]
BL              sub_14C548
LDR             R0, [R9]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
LDR             R4, [R0,#0x3E4]
MOV             R0, R8
BL              sub_5A18EC
STR             R4, [R5,#0x78]
STR             R4, [R5,#0x70]
LDR             R0, [R6]
CMP             R0, #0
BNE             loc_22B770
POP             {R4-R12,PC}
LDR             R0, [R7]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
MOVNE           R0, #2
STRBNE          R0, [R4,#0x45C]
BNE             locret_22B700
STRB            R11, [R4,#0x45C]
MOV             R0, R4
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
STR             R10, [R4,#0x460]
BL              sub_14C548
LDR             R0, [R9]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
LDR             R4, [R0,#0x3E4]
MOV             R0, R8
BL              sub_5A18EC
STR             R4, [R5,#0x78]
STR             R4, [R5,#0x70]
LDR             R0, [R6]
CMP             R0, #0
BEQ             locret_22B700
POP             {R4-R12,LR}
MOV             R1, #0
B               sub_1586A8
