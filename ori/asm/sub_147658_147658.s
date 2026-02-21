LDR             R0, =dword_6CE850
PUSH            {R4,LR}
LDR             R0, [R0]
TST             R0, #1
BNE             loc_147694
LDR             R0, =dword_6CE850
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_147694
LDR             R0, =dword_6E2668
MOV             R2, #0x2C ; ','
MOV             R1, #0
BL              sub_110BE4
LDR             R0, =dword_6CE850
NOP
LDR             R1, =flt_6E2A58
LDR             R0, =dword_6E2668
MOV             R2, #0
LDR             R3, [R1,#(dword_6E2A64 - 0x6E2A58)]
STR             R3, [R0]
LDR             R3, [R1,#(dword_6E2A68 - 0x6E2A58)]
STR             R3, [R0,#(dword_6E266C - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A6C - 0x6E2A58)]
STR             R3, [R0,#(dword_6E2670 - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A70 - 0x6E2A58)]
STR             R3, [R0,#(dword_6E2674 - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A74 - 0x6E2A58)]
STR             R3, [R0,#(dword_6E2678 - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A78 - 0x6E2A58)]
STR             R3, [R0,#(dword_6E267C - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A7C - 0x6E2A58)]
STR             R3, [R0,#(dword_6E2680 - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A80 - 0x6E2A58)]
STR             R3, [R0,#(dword_6E2684 - 0x6E2668)]
LDR             R3, [R1,#(dword_6E2A84 - 0x6E2A58)]
STR             R3, [R0,#(dword_6E2688 - 0x6E2668)]
LDR             R1, [R1,#(dword_6E2A88 - 0x6E2A58)]
STR             R1, [R0,#(dword_6E268C - 0x6E2668)]
STRB            R2, [R0,#(byte_6E2690 - 0x6E2668)]
STRB            R2, [R0,#(byte_6E2691 - 0x6E2668)]
POP             {R4,PC}
