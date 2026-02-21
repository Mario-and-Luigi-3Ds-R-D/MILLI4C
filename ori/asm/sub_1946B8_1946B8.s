PUSH            {R4,LR}
BL              sub_540A34
LDR             R2, =off_6B0070
MOV             R4, R0
ADD             R3, R2, #0x400
STR             R2, [R0]
ADD             R1, R3, #0x18
STR             R1, [R0,#0x758]
STR             R3, [R0,#0xE0]
ADD             R0, R0, #0x2000
MOV             R2, #0x10
MOV             R1, #0
ADD             R0, R0, #0x670
BL              sub_110BE4
LDR             R3, [R4,#0x648]
MOV             R1, #0x2680
MOV             R2, #0
ORR             R3, R3, #0x2000000
STR             R3, [R4,#0x648]
MOV             R0, R4
STR             R2, [R1,R4]
POP             {R4,PC}
