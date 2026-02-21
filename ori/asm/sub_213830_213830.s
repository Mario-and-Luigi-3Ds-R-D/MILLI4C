PUSH            {R4,LR}
LDR             R0, =off_6CE970
LDR             R1, [R2,#8]
LDR             R0, [R0]
UXTH            R1, R1
AND             R2, R1, #0xF000
CMP             R2, #0x3000
BEQ             loc_21386C
BGT             loc_213860
CMP             R2, #0x1000
BLEQ            sub_52F72C
B               loc_213874
CMP             R2, #0x4000
CMPNE           R2, #0x5000
BNE             loc_213874
NOP
BL              sub_52FA44
MOV             R0, #0
POP             {R4,PC}
