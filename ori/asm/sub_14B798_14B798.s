PUSH            {R4-R6,LR}
MOV             R4, R0
STRB            R1, [R0,#0xF8]
STRB            R2, [R0,#0xF9]
LDR             R0, [R0]
MOV             R6, R1
MOV             R5, R2
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_14B804
LDR             R0, [R4]
CMP             R6, #0
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BEQ             loc_14B7F4
BLX             R1
CMP             R5, #0
MOVNE           R1, #2
MOVEQ           R1, #0
ORR             R1, R1, #1
B               loc_14B800
NOP
BLX             R1
MOV             R1, #0
STRB            R1, [R0,#0x6F]
POP             {R4-R6,PC}
