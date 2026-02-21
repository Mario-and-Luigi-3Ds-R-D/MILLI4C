PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B3E58
MOV             R1, #0
STRD            R0, R1, [R4]
STR             R1, [R4,#8]
STR             R1, [R4,#0xC]
ADD             R0, R4, #0x10
STR             R1, [R4,#0x10]
STR             R1, [R4,#0x14]
BL              sub_120E48
ADD             R0, R4, #0x10
BL              sub_120F58
MOV             R0, R4
POP             {R4,PC}
