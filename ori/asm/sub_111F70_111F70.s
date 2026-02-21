PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B7BDC
LDR             R1, =0xE7E3FFFF
LDR             R2, =off_6B81B0
STR             R0, [R4]
STR             R1, [R4,#4]
MOV             R1, #0
STR             R1, [R4,#0x10]
STR             R2, [R4,#0xC]
STR             R1, [R4,#0x14]
STR             R1, [R4,#0x18]
STR             R1, [R4,#0x20]
STR             R1, [R4,#0x24]
STR             R1, [R4,#0x2C]
LDR             R1, =off_6B414C
ADD             R0, R4, #0x14
STR             R1, [R4,#0x28]
MOV             R1, #0
BL              sub_120E48
MOV             R0, R4
POP             {R4,PC}
