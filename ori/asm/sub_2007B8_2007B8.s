LDR             R1, =off_6B27EC
PUSH            {R4,LR}
MOV             R2, #0x118
STR             R1, [R0]
MOV             R1, #0
STRH            R1, [R2,R0]
STRH            R1, [R0,#0xE0]
BL              sub_1F3F94
POP             {R4,LR}
B               sub_300FD4
