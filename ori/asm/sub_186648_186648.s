PUSH            {R4,LR}
BL              sub_540A34
LDR             R1, =off_6AF640
MOV             R4, R0
ADD             R2, R1, #0x400
STR             R2, [R0,#0xE0]
ADD             R3, R2, #0x18
STR             R1, [R0]
STR             R3, [R0,#0x758]
ADD             R0, R0, #0x2000
MOV             R2, #4
MOV             R1, #0
ADD             R0, R0, #0x670
BL              sub_110BE4
LDR             R0, [R4,#0x648]
ORR             R1, R0, #0x2000000
MOV             R0, R4
STR             R1, [R4,#0x648]
POP             {R4,PC}
