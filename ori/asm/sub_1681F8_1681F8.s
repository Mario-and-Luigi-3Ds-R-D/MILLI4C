PUSH            {R3-R9,LR}
MOV             R5, R3
MOV             R6, R1
MOV             R7, R0
MOV             R1, R2
LDR             R8, [SP,#0x20+arg_0]
MOV             R3, #0x10000
MOV             R2, #0
MOV             R0, #0x17C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_168234
BL              sub_1E9F04
MOV             R4, R0
LDR             R1, [R6]
MOV             R0, #0
LDR             R2, [R1,#0x20]!
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R0
CMP             R1, #0
MOVEQ           R0, #0
BEQ             loc_168268
ADD             R1, R1, R5,LSL#4
LDR             R2, [R1,#0x28]!
CMP             R2, #0
ADDNE           R0, R2, R1
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R4]
MOV             R3, R8
ADD             R2, R7, #0xCC
MOV             R1, SP
LDR             R12, [R0,#0x28]
MOV             R0, R4
BLX             R12
MOV             R0, R4
POP             {R3-R9,PC}
