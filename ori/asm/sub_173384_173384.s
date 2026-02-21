ADD             R1, R0, #0x400
PUSH            {R4,LR}
MOV             R4, R0
ADD             R1, R1, #0x358
BL              sub_1E74DC
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2D8
LDR             R0, [R4,#0xAE0]
LDM             R1, {R1,R2}
STR             R0, [R4,#0xAEC]
ADD             R4, R4, #0x800
ADD             R4, R4, #0x2E4
STM             R4, {R1,R2}
POP             {R4,PC}
