PUSH            {R3-R7,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R0, [R0,#8]
MOV             R6, #1
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_502348
LDR             R0, [R5,#0x204]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BGT             locret_21AC14
LDR             R0, [R4,#8]
LDRB            R1, [R4,#0x1A]
LDRB            R2, [R0,#0x488]
CMP             R2, R1
BNE             loc_21ABDC
MOV             R2, R6
MOV             R1, R7
MOV             R0, R4
POP             {R3-R7,LR}
B               loc_21B50C
MOV             R5, #0
MOV             R3, #0x100
MOV             R2, R5
MOV             R1, R5
STR             R5, [SP,#0x18+var_18]
BL              sub_4E3CA0
LDR             R1, =off_64E794
LDRD            R0, R1, [R1,#(dword_64E79C - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x18]
BL              sub_501804
LDR             R0, [R4,#8]
STRB            R5, [R0,#0x48A]
POP             {R3-R7,PC}
