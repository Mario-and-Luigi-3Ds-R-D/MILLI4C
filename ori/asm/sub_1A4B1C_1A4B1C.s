PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE388
MOV             R0, #0
VPUSH           {D8}
STRB            R0, [R4,#8]
LDR             R0, [R5]
LDR             R0, [R0,#0x98]
VLDR            S16, [R0,#0x35C]
LDR             R0, [R5]
ADD             R0, R0, #0x4D0
LDR             R2, [R4,#4]
VMOV.F32        S0, S16
MOV             R1, R0
LDR             R2, [R2,#0x14]
ADD             R2, R2, #0x1DC
MOV             R0, R2
BL              sub_5A29E4
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
LDR             R0, [R0,#0x14]
BL              sub_14C548
LDR             R0, [R5]
ADD             R0, R0, #0x4D0
LDR             R1, [R4,#4]
VLDR            S0, [R0]
LDR             R0, [R1,#0x14]
VLDR            S1, [R0,#0x24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #1
MOVLE           R1, #0
AND             R2, R1, #2
STRB            R1, [R0,#0xF3]
MOV             R2, R2,LSR#1
STRB            R2, [R0,#0xF4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x18]
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_1A4F14
