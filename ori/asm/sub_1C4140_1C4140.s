PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x50]
CMP             R0, #0
BNE             locret_1C4170
LDR             R0, =off_6CE970
LDR             R1, =0x1AE
MOV             R2, #0
LDR             R0, [R0]
BL              sub_52F9B4
MOV             R0, #1
STRB            R0, [R4,#0x50]
POP             {R4,PC}
