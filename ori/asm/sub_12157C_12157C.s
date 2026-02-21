PUSH            {R4-R6,LR}
LDR             R6, =byte_6D4A28
LDRSB           R0, [R6,#(byte_6D4A29 - 0x6D4A28)]
LDRSB           R1, [R6,#(byte_6D4A2A - 0x6D4A28)]
BICS            R0, R0, R1
LDRNE           R5, =unk_70E358
MOVNE           R4, #0
BEQ             locret_1215D8
LDR             R0, [R5,R4,LSL#2]
CMP             R0, #0
BLXNE           R0
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_12159C
LDRB            R0, [R6,#(byte_6D4A29 - 0x6D4A28)]
CMP             R0, #0
BEQ             loc_1215D0
LDR             R0, [R6,#(dword_6D4A30 - 0x6D4A28)]
BL              sub_128628
MOV             R0, #0
STRB            R0, [R6,#(byte_6D4A29 - 0x6D4A28)]
MOV             R0, #1
STRB            R0, [R6,#(byte_6D4A2A - 0x6D4A28)]
POP             {R4-R6,PC}
