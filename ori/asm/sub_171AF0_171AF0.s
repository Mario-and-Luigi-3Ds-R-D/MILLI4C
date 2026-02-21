PUSH            {R0-R2,R4-R11,LR}
MOV             R6, R0
MOV             R10, R2
LDR             R0, [R0]
LDR             R1, [R0,#0x3C4]
MOV             R0, R6
BLX             R1
MOV             R5, R0
LDR             R0, [R6]
MOV             R4, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BLS             loc_171B94
LDR             R0, =_ZTV13DreamMarioSub; `vtable for'DreamMarioSub ...
LDR             R11, =0x858
ADD             R7, R0, #8
ADD             R9, R0, #0x374
ADD             R8, R0, #0x38C
LDR             R1, [SP,#0x30+var_2C]
MOV             R3, R10
MOV             R2, #0
MOV             R0, R11
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_171B74
MOV             R1, R6
BL              sub_1955B8
STR             R7, [R0]
STR             R8, [R0,#0x758]
STR             R9, [R0,#0xE0]
STR             R0, [R5],#4
LDR             R0, [R6]
ADD             R4, R4, #1
LDR             R1, [R0,#0x3CC]
MOV             R0, R6
BLX             R1
CMP             R0, R4
BHI             loc_171B40
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
