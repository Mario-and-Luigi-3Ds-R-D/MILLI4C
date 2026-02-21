LDR             R2, =off_6CE970
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =0x19CF48
LDR             R1, [R2]
ADD             R0, R0, R1; loc_19CF48
LDR             R1, [R0]
TST             R1, #4
BNE             loc_150B1C
TST             R1, #1
ORRNE           R1, R1, #4
STRNE           R1, [R0]
LDRB            R0, [R4,#0x24]
CMP             R0, #0
BEQ             loc_150B64
CMP             R0, #1
BNE             loc_150B64
LDR             R0, [R4,#0x2C]
CMP             R0, #0
BNE             loc_150B64
LDR             R0, =0x10D4D8
LDR             R1, [R2]
ADD             R5, R1, R0; loc_10D4D8
MOV             R0, R5
BL              sub_5711E4
MOV             R0, R5
NOP
BL              sub_571348
MOV             R0, #2
STRB            R0, [R4,#0x24]
LDR             R1, [R4,#0xC]
CMP             R1, #0
BNE             loc_150B84
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_150BCC
CMP             R0, #0
BEQ             loc_150BCC
LDR             R0, [R4,#0x10]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_150B9C
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDR             R0, [R4,#0xC]
CMP             R0, #0
BNE             loc_150BC4
LDR             R0, [R4,#0x10]
TST             R0, #1
BEQ             loc_150BCC
CMP             R0, #0
BEQ             loc_150BCC
MOV             R0, #1
POP             {R4-R6,PC}
MOV             R0, #0
POP             {R4-R6,PC}
