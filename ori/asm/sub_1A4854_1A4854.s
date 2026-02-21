PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R6, =off_6CE970
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
STRB            R5, [R0,#8]
LDR             R1, [R0,#4]
LDR             R0, [R6]
MOV             R3, #1
LDR             R1, [R1,#0x14]
STR             R5, [SP,#0x20+var_20]
ADD             R2, R1, #0x24 ; '$'
LDR             R1, =0x672
BL              sub_52AEA8
LDR             R0, [R4,#4]
LDR             R12, [R6]
LDR             R2, =0x30745
MOV             R3, #0
LDR             R1, [R0,#0x14]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503720
LDR             R6, =off_6CE388
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
VLDR            S16, [R0,#0x334]
ADD             R0, R4, #0xC
BL              sub_5A18EC
VSTR            S16, [R4,#0x18]
VSTR            S16, [R4,#0x10]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x14]
LDRD            R2, R3, [R1,#0x24]
LDR             R1, [R1,#0x2C]
STR             R1, [R4,#0x48]
STRD            R2, R3, [R4,#0x40]
STRB            R5, [R4,#8]
LDR             R0, [R0,#0x14]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
BL              sub_14C548
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
VLDR            S16, [R0,#0x33C]
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
VMOV.F32        S1, S16
VLDR            S0, [R0,#0x338]
ADD             R0, R4, #0xC
BL              sub_5A1A48
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x18]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_1A4F14
