PUSH            {R4-R6,LR}
LDR             R6, =byte_6D4A28
LDRB            R0, [R6,#(byte_6D4A2A - 0x6D4A28)]
CMP             R0, #0
LDRNE           R5, =unk_70E398
MOVNE           R4, #0
BEQ             locret_119434
LDR             R0, [R5,R4,LSL#2]
CMP             R0, #0
BLXNE           R0
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_119414
MOV             R0, #0
STRB            R0, [R6,#(byte_6D4A2A - 0x6D4A28)]
POP             {R4-R6,PC}
