PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
LDR             R0, [R5]
BL              sub_5EE958
CMP             R0, #0
BEQ             locret_14FBFC
LDR             R2, [R4,#8]
MOV             R0, #0x1A
MOV             R1, #0x1B
LDRB            R2, [R2,#0x495]
CMP             R2, #0
MOVNE           R0, R1
UXTH            R1, R0
LDR             R0, [R5]
BL              sub_52F770
LDR             R1, =unk_63E86C
LDR             R0, [R5]
MOV             R2, #2
BL              sub_529204
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E8C0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
