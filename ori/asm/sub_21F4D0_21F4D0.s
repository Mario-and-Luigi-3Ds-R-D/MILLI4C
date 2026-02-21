PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
CMP             R0, #0
BNE             loc_21F500
ADD             R0, R4, #8
LDR             R1, [R4,#0x18]
LDM             R0, {R0,R2}
LDR             R3, [R0]
LDR             R3, [R3,#0xC]
BLX             R3
STR             R0, [R4,#0x14]
LDR             R0, [R4,#0x10]
LDR             R2, [R4,#0x1C]
MOV             R3, #0
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
BLX             R1
LDR             R0, [R4,#0x20]
LDR             R2, [R4,#0x18]
CMP             R2, R0
LDRHI           R6, [R4,#0x14]
MOVHI           R5, R2
BHI             loc_21F544
LDRD            R0, R1, [R4,#0x10]
LDR             R3, [R0]
LDR             R3, [R3,#0x2C]
POP             {R4-R6,LR}
BX              R3
MOV             R2, R0
LDR             R0, [R4,#0x10]
CMP             R5, R2
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
BHI             loc_21F56C
MOV             R2, R5
MOV             R1, R6
POP             {R4-R6,LR}
BX              R3
MOV             R1, R6
BLX             R3
LDR             R0, [R4,#0x20]
SUB             R5, R5, R0
ADD             R6, R6, R0
B               loc_21F544
