PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE388
MOV             R0, #0
STRB            R0, [R4,#8]
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
MOV             R5, R0
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x310]
ADD             R1, R5, #0x94
LDR             R0, [R0,#0x14]
ADD             R0, R0, #0x1DC
BL              sub_5A2138
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x18]
BL              sub_1A4F14
LDR             R0, [R6]
LDR             R0, [R0,#0x94]
LDRB            R0, [R0,#0x1D9]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BNE             locret_1A413C
LDR             R0, [R4,#4]
VLDR            S0, [R5,#0x94]
MOV             R3, #0x100
MOV             R2, #0
LDR             R0, [R0,#0x14]
MOV             R1, #2
VLDR            S1, [R0,#0x24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGT           R5, #1
MOVLE           R5, #0
BL              sub_14C548
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x14]
STRB            R5, [R0,#0xF3]
POP             {R4-R6,PC}
