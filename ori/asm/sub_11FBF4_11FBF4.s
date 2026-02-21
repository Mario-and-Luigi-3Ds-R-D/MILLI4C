PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_11FCA8
MOV             R3, #0x1CC
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R0
BEQ             loc_11FCA8
MOV             R1, #0x1CC
BL              sub_2FFE8C
LDR             R0, =0x2901
MOV             R1, #0x2600
STR             R1, [R4,#4]
STR             R0, [R4,#8]
STR             R1, [R4]
VLDR            S0, =0.0
MOV             R2, #0
STR             R0, [R4,#0xC]
VSTR            S0, [R4,#0x28]
VSTR            S0, [R4,#0x24]
SUB             R3, R2, #0x3E8
STR             R2, [R4,#0x2C]
STR             R3, [R4,#0x14]
VSTR            S0, [R4,#0x20]
VSTR            S0, [R4,#0x1C]
MOV             R1, R2
MOV             R0, R2
VSTR            S0, [R4,#0x18]
ADD             R2, R1, R1,LSL#4
ADD             R1, R1, #1
ADD             R2, R4, R2,LSL#2
ADD             R3, R1, R1,LSL#4
STR             R5, [R2,#0x74]
ADD             R2, R4, R3,LSL#2
ADD             R0, R0, #2
CMP             R0, #6
ADD             R1, R1, #1
STR             R5, [R2,#0x74]
BLT             loc_11FC7C
MOV             R0, R4
POP             {R4-R6,PC}
