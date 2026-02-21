PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0x15C]
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_1EDED0
ADD             R6, R5, R4,LSL#2
LDR             R0, [R6,#0xBC]
ADD             R0, R0, #0x2C4
BL              sub_598FD8
LDR             R0, [R6,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1EDE94
LDR             R0, [R5,#0xBC]
LDR             R1, [R6,#0xBC]
CMP             R1, R0
BNE             loc_1EDE84
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x20]
BL              sub_5AFCCC
LDR             R0, [R6,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1EDE40
LDR             R0, [R5,#0xBC]
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2C4
LDRH            R0, [R0,#0xC]
CMP             R0, #0
BNE             locret_1EDF04
LDR             R0, [R5,#0xC0]
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x2C4
LDRH            R0, [R0,#0xC]
CMP             R0, #0
BNE             locret_1EDF04
LDR             R0, [R5,#0x154]
CMP             R0, #0
SUBNE           R0, R0, #1
STRNE           R0, [R5,#0x154]
BNE             locret_1EDF04
LDR             R0, [R5]
MOV             R3, #1
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E3A4
LDM             R0, {R1,R2}
MOV             R0, R5
POP             {R4-R6,LR}
BX              R12
POP             {R4-R6,PC}
