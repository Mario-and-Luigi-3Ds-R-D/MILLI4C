PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_528E64
MOV             R5, R0
BL              sub_5EC8BC
CMP             R0, #0
BNE             locret_1D3538
LDR             R1, =0xC004
LDRB            R3, [R5,#0x495]
MOV             R0, R4
CMP             R3, #0
ORR             R2, R1, R1,ASR#15
MOVNE           R1, R2
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_1D3538
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1D2948
POP             {R4-R6,PC}
