PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_11FD40
MOV             R3, #0x78 ; 'x'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R0
BEQ             loc_11FD40
MOV             R1, #0x78 ; 'x'
BL              sub_2FFE8C
LDR             R1, =0x2901
MOV             R0, #0x2600
STR             R0, [R4,#4]
STR             R0, [R4]
VLDR            S0, =0.0
STR             R1, [R4,#8]
STR             R1, [R4,#0xC]
MOV             R2, #0
VSTR            S0, [R4,#0x24]
VSTR            S0, [R4,#0x28]
SUB             R3, R2, #0x3E8
STR             R2, [R4,#0x2C]
STR             R3, [R4,#0x14]
VSTR            S0, [R4,#0x20]
VSTR            S0, [R4,#0x1C]
VSTR            S0, [R4,#0x18]
STR             R5, [R4,#0x74]
MOV             R0, R4
POP             {R4-R6,PC}
