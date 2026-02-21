PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #1
STR             R0, [R4,#4]
MOV             R1, #0
STR             R1, [R4]
STR             R1, [R4,#8]
STR             R1, [R4,#0xC]
STR             R1, [R4,#0x10]
STR             R1, [R4,#0x14]
ADD             R0, R4, #0x20 ; ' '
STR             R1, [R4,#0x1C]
STR             R0, [R4,#0x24]
STR             R0, [R4,#0x20]
LDR             R0, =off_6CE970
STRB            R1, [R4,#0x18]
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [R4]
LDR             R0, =off_6CDF98
LDR             R0, [R0]
LDR             R0, [R0,#0x124]
LDR             R0, [R0,#0x638]
RSB             R1, R0, R0,LSL#4
MOV             R0, R4
BL              sub_6253F8
VLDR            S0, =0.0
MOV             R0, R4
VSTR            S0, [R4,#0x28]
POP             {R4,PC}
