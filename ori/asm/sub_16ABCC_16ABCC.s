PUSH            {R4,LR}
LDRB            R2, [R1,#0x75C]
AND             R2, R2, #7
CMP             R2, #2
BEQ             loc_16ABF8
LDR             R2, [R0]
LDR             R2, [R2,#0x440]
BLX             R2
CMP             R0, #0
MOVNE           R0, #1
BNE             locret_16ABFC
MOV             R0, #0
POP             {R4,PC}
