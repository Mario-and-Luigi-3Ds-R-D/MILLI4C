PUSH            {R4,LR}
MOV             R4, R1
LDR             R1, [R0]
LDR             R1, [R1,#0x120]
BLX             R1
LDR             R1, [R0]
MOV             R0, #0
LDR             R2, [R1,#0x1C]!
CMP             R2, #0
ADDNE           R1, R1, R2
MOVEQ           R1, R0
CMP             R1, #0
MOVEQ           R0, #0
BEQ             loc_1E92F0
ADD             R1, R1, R4,LSL#4
LDR             R2, [R1,#0x28]!
CMP             R2, #0
ADDNE           R0, R2, R1
ADD             R0, R0, #0x20 ; ' '
POP             {R4,PC}
