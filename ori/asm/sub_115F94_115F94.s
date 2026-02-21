PUSH            {R4-R10,LR}
LDR             R8, =off_6D4920
LDR             R0, [R8]
CMP             R0, #0
BEQ             locret_1160B8
LDR             R0, =off_6D48F8
LDR             R5, =off_6D242C
MOV             R6, #0
LDR             R9, [R0]
LDR             R0, [R8]
LDR             R4, [R0,R6,LSL#2]
CMP             R4, #0
BEQ             loc_116078
LDR             R0, [R4,#4]
LDR             R7, [R4,#0xC]
CMP             R0, #0
BEQ             loc_115FE4
CMP             R0, #1
BNE             loc_116070
B               loc_116028
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_116018
MOV             R0, R4
BL              sub_11FE04
LDR             R12, [R5]
CMP             R12, #0
BEQ             loc_116070
LDR             R3, [R4,#8]
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R5]
CMP             R12, #0
BEQ             loc_116070
B               loc_11605C
LDR             R3, [R4,#8]
CMP             R3, #0
BEQ             loc_116050
LDR             R12, [R5]
CMP             R12, #0
BEQ             loc_116070
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R5]
CMP             R12, #0
BEQ             loc_116070
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R7
BNE             loc_115FC8
ADD             R6, R6, #1
CMP             R6, #0x200
BLT             loc_115FB8
LDR             R12, [R5]
CMP             R12, #0
BEQ             loc_1160A8
LDR             R0, [R8]
MOV             R2, #0
MOV             R1, #0x100
LDR             R3, [R0,#0x800]
MOV             R0, #0x10000
BLX             R12
MOV             R0, #0
STR             R0, [R9,#0x5DC]
STR             R0, [R9,#0x5D8]
STR             R0, [R8]
POP             {R4-R10,PC}
