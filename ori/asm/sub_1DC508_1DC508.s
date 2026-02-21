PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R0, [R5]
BL              sub_528E64
LDR             R0, [R5]
LDR             R2, =0x19B0B4
LDR             R1, =0xC03
LDR             R2, [R2,R0]
TST             R1, R2
BEQ             locret_1DC56C
LDR             R3, =0xFFE683CC
LDR             R1, =0x10016
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
ADD             R0, R4, #0x10C00
ADD             R0, R0, #0x254
BL              sub_2C723C
LDR             R1, =unk_656B78
ADD             R2, R4, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656C44 - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
POP             {R4-R6,PC}
