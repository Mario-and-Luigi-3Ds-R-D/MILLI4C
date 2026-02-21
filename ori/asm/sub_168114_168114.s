LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R5, R2
MOV             R2, R1
LDR             R0, [R0]
MOV             R4, R3
MOV             R1, #0
LDR             R0, [R0,#0xA0]
BL              sub_2D3DF8
STRH            R4, [R0,#0xA]
MOV             R1, #0
VLDM            R5, {S0-S2}
MOV             R2, #0x3F800000
STR             R1, [R0,#0x80]
STR             R2, [R0,#0x7C]
ADD             R4, R0, #0x8C
STR             R1, [R0,#0x84]
VSTR            S0, [R0,#0x88]
STM             R4, {R1,R2}
ADD             R4, R0, #0xA0
STR             R1, [R0,#0x94]
VSTR            S1, [R0,#0x98]
STR             R1, [R0,#0x9C]
STM             R4, {R1,R2}
VSTR            S2, [R0,#0xA8]
POP             {R4-R6,PC}
