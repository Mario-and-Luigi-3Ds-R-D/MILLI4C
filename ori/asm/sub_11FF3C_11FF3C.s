PUSH            {R4,LR}
CMP             R1, #0
BEQ             loc_11FF70
LDRB            R0, [R1]
CMP             R0, #0
BEQ             loc_11FF70
LDR             R0, =(unk_6C75C0 - 0x11FF60)
ADD             R0, PC, R0; unk_6C75C0
BL              sub_3000AC
CMP             R0, #0
BEQ             loc_11FF70
MOVS            R0, #0
POP             {R4,PC}
LDR             R0, =(unk_6C75C8 - 0x11FF7C)
ADD             R0, PC, R0; unk_6C75C8
POP             {R4,PC}
