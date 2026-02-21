PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x1E3]
CMP             R0, #0
BNE             locret_21CB2C
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R1,#0x18]
LDR             R2, =0x30062
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #1
STRB            R0, [R4,#0x1E3]
POP             {R4,PC}
