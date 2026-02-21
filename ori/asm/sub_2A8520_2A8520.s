PUSH            {R4,LR}
MOV             R4, R0
ADD             R1, R0, #0x88
LDR             R0, =0x207
BL              sub_10B948
LDR             R0, [R4,#0x84]
BL              sub_10AEA0
POP             {R4,LR}
B               sub_612734
