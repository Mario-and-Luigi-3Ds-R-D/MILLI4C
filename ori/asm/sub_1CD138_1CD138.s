LDR             R2, =off_6BB6B4
PUSH            {R4,LR}
MOV             R1, #0
STR             R2, [R0]
LDR             R2, [R0,#0x18]
STR             R1, [R2,#0xF8]
BL              sub_1DFC1C
POP             {R4,LR}
B               sub_300FD4
