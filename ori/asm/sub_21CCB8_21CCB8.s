PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R1, =off_6B2C98
STR             R1, [R0]
LDR             R0, [R0,#0x1DC]
CMP             R0, #0
BEQ             loc_21CCE8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R4,#0x1DC]
LDR             R5, [R4,#0x1C0]
ADD             R6, R4, #0x1C0
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_21CD38
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
BNE             loc_21CCFC
SUB             R0, R6, #0x20 ; ' '
NOP
POP             {R4-R8,LR}
SUB             R0, R0, #0x1A0
B               sub_300FD4
