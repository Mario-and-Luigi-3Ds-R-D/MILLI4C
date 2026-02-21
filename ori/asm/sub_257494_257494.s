ADD             R0, R0, #0x4B0
PUSH            {R4,LR}
BL              sub_14F3EC
SUB             R4, R0, #0x4B0
LDR             R0, =off_6B7C1C
LDR             R1, =sub_5A2F60
MOV             R3, #3
STR             R0, [R4,#0x408]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x3F4
BL              sub_14F3EC
SUB             R4, R0, #0x14
LDR             R0, [R0,#-0xC]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_2574F0
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R4
POP             {R4,PC}
