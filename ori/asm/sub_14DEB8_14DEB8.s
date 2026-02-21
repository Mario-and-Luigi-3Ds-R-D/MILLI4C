PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x3E4]
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
MOVS            R1, R0
MOVEQ           R0, #0xFFFFFFFF
BEQ             locret_14DEEC
MOV             R0, R4
POP             {R4,LR}
B               loc_14DF90
POP             {R4,PC}
