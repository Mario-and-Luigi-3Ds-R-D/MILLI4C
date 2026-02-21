PUSH            {R4-R8,LR}
MOV             R5, R1
MOVS            R4, R2
ADD             R6, R0, #0x10
ADD             R7, R0, R5,LSL#2
BEQ             loc_231C08
LDR             R0, [R4]
LDR             R1, [R0,#0x38]
MOV             R0, R2
BLX             R1
LDR             R1, [R0,#0xA4]
CMP             R5, #0
STR             R1, [R6,R5,LSL#2]
BEQ             loc_231C38
MOV             R1, #1
STRB            R1, [R0,#0xCC]
LDR             R0, [R0,#0xA4]
ADD             R0, R0, #0x104
BL              sub_58DD64
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
LDRNE           R0, [R4,#0x598]
CMPNE           R0, #0
ADDNE           R0, R0, #0x104
BLNE            sub_58DD64
B               loc_231C38
MOV             R0, #0
STR             R0, [R6,R1,LSL#2]
LDR             R4, [R7,#0x184]
CMP             R4, #0
BEQ             loc_231C38
LDR             R0, [R4]
LDR             R1, [R0,#0x38]
MOV             R0, R4
BLX             R1
MOV             R1, #0
MOV             R4, R1
STRB            R1, [R0,#0xCC]
STR             R4, [R7,#0x184]
POP             {R4-R8,PC}
