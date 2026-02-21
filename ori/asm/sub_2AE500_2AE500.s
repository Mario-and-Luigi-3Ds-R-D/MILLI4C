PUSH            {R3-R9,LR}
MOV             R4, R1
MOV             R7, R0
MOV             R5, #0
LDR             R0, [R1]
MOV             R8, R2
MOV             R6, R5
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_2AE640
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BEQ             loc_2AE640
LDR             R0, [R4]
LDR             R1, [R0,#0x80]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_2AE640
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             loc_2AE5AC
LDR             R0, [R4]
LDR             R1, [R0,#0x38]
MOV             R0, R4
BLX             R1
LDR             R1, [R0,#0xA4]
MOV             R3, #0xFF
MOV             R2, #2
LDR             R0, [R1,#0x118]
STR             R0, [SP,#0x20+var_20]
LDR             R12, [R1,#0x114]
ADD             R0, R7, #0x158
BLX             R12
MOV             R5, R0
LDR             R0, [R7]
LDR             R1, [R0,#0x8C]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_2AE640
ADD             R0, R4, #0x400
ADD             R0, R0, #0xF4
BL              sub_5C63A4
CMP             R0, #0
NOP
BEQ             loc_2AE640
LDR             R1, [R4,#0x598]
MOV             R3, #0xFF
MOV             R2, #2
LDR             R0, [R1,#0x118]
STR             R0, [SP,#0x20+var_20]
LDR             R12, [R1,#0x114]
ADD             R0, R7, #0x158
BLX             R12
CMP             R5, #0
MOV             R6, R0
BEQ             loc_2AE640
LDR             R0, [R5,#4]
MOV             R2, #0xFFFFFFFF
ADD             R1, R6, #4
LDR             R12, =0xE000001F
MOV             R0, R0,LSL#3
LDR             R3, [R1]
ADD             R0, R2, R0,LSR#8
CMP             R0, #0
MOVLT           R0, #0
MOV             R2, #0x1FFFFFFF
AND             R3, R3, R12
AND             R0, R2, R0,LSL#5
ORR             R0, R0, R3
STR             R0, [R1]
CMP             R8, #0
STMNE           R8, {R5,R6}
POP             {R3-R9,PC}
