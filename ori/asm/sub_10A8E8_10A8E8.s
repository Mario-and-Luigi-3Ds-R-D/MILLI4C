CMP             R0, #0
BXEQ            LR
PUSH            {R4-R12,LR}
MOV             R7, R0
MOV             R10, R1
MOV             R9, #0
LDR             R5, =off_6D2420
LDR             R11, =off_6D2428
LDR             R0, [R5]
LDR             R4, [R0]
CMP             R4, #0
MOVNE           R8, #0
MOVNE           R5, #1
BNE             loc_10AA68
MOV             R4, #0
CMP             R7, #0
MOV             R6, R4
BLS             locret_10A9B0
LDR             R12, [R11]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10A984
MOV             R3, #0x28 ; '('
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
CMP             R0, #0
BEQ             loc_10A984
STR             R9, [R0]
STR             R9, [R0,#4]
STR             R9, [R0,#8]
STR             R9, [R0,#0xC]
STR             R9, [R0,#0x10]
STR             R9, [R0,#0x14]
STR             R9, [R0,#0x18]
STR             R9, [R0,#0x1C]
STR             R9, [R0,#0x20]
STR             R9, [R0,#0x24]
CMP             R4, #0
LDREQ           R1, [R5]
STRNE           R0, [R4,#0x24]
MOV             R4, R0
STREQ           R0, [R1]
ADD             R1, R6, #1
STR             R1, [R10,R6,LSL#2]
ADD             R6, R6, #1
CMP             R6, R7
STR             R1, [R0,#0x20]
BCC             loc_10A930
POP             {R4-R12,PC}
LDR             R0, [R6,#0x20]
CMP             R0, R5
MOVHI           R9, #0
BHI             loc_10AA44
B               loc_10AA60
LDR             R12, [R11]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10AA20
MOV             R3, #0x28 ; '('
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
CMP             R0, #0
BEQ             loc_10AA20
MOV             R1, #0
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0x14]
STR             R1, [R0,#0x18]
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x20]
STR             R1, [R0,#0x24]
ADD             R1, R9, R5
STR             R1, [R0,#0x20]
STR             R1, [R10,R8,LSL#2]
STR             R0, [R4,#0x24]
SUB             R7, R7, #1
ADD             R9, R9, #1
ADD             R8, R8, #1
MOV             R4, R0
STR             R6, [R0,#0x24]
LDR             R0, [R6,#0x20]
SUB             R0, R0, R5
CMP             R0, R9
BLS             loc_10AA5C
CMP             R7, #0
BNE             loc_10A9C8
LDR             R5, [R6,#0x20]
MOV             R4, R6
ADD             R5, R5, #1
LDR             R6, [R4,#0x24]
CMP             R6, #0
BEQ             loc_10AA80
CMP             R7, #0
BNE             loc_10A9B4
POP             {R4-R12,PC}
CMP             R7, #0
MOVNE           R6, #0
MOVHI           R9, #0
BEQ             locret_10A9B0
BLS             loc_10AB0C
LDR             R12, [R11]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10AAE8
MOV             R3, #0x28 ; '('
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
CMP             R0, #0
BEQ             loc_10AAE8
STR             R9, [R0]
STR             R9, [R0,#4]
STR             R9, [R0,#8]
STR             R9, [R0,#0xC]
STR             R9, [R0,#0x10]
STR             R9, [R0,#0x14]
STR             R9, [R0,#0x18]
STR             R9, [R0,#0x1C]
STR             R9, [R0,#0x20]
STR             R9, [R0,#0x24]
STR             R0, [R4,#0x24]
STR             R5, [R0,#0x20]
STR             R5, [R10,R8,LSL#2]
ADD             R6, R6, #1
CMP             R6, R7
MOV             R4, R0
ADD             R5, R5, #1
ADD             R8, R8, #1
BCC             loc_10AA94
MOV             R0, #0
STR             R0, [R4,#0x24]
POP             {R4-R12,PC}
