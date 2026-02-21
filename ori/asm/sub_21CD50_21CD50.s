PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R0, =off_6B2C98
STR             R0, [R4]
LDR             R0, [R4,#0x1DC]
CMP             R0, #0
BEQ             loc_21CD80
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R4,#0x1DC]
LDR             R5, [R4,#0x1C0]
ADD             R6, R4, #0x1C0
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_21CDD0
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R7, [R0,#8]
STR             R7, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_21CD94
SUB             R0, R6, #0x20 ; ' '
NOP
SUB             R0, R0, #0x1A0
POP             {R4-R8,PC}
