PUSH            {R4,LR}
CMP             R1, #0
BEQ             loc_11FF28
LDRB            R0, [R1]
CMP             R0, #0
BEQ             loc_11FF28
LDR             R0, =(unk_6C74B0 - 0x11FF18)
ADD             R0, PC, R0; unk_6C74B0
BL              sub_3000AC
CMP             R0, #0
BEQ             loc_11FF28
MOVS            R0, #0
POP             {R4,PC}
LDR             R0, =(unk_6C74B8 - 0x11FF34)
ADD             R0, PC, R0; unk_6C74B8
POP             {R4,PC}
