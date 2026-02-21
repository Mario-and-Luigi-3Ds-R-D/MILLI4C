PUSH            {R4,LR}
LDR             R0, =off_6CE970
LDR             R1, =0xB013
VPUSH           {D8}
LDR             R0, [R0]
VLDR            S16, [R2,#8]
BL              sub_52FACC
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_212AAC
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_212AC4
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_212ACC
LDRB            R0, [R0,#0x12]
CMP             R0, #0
BNE             loc_212ACC
LDR             R0, =dword_6E2378
VSTR            S16, [R0,#(dword_6E237C - 0x6E2378)]
MOV             R0, #0
VPOP            {D8}
POP             {R4,PC}
