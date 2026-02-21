PUSH            {R4-R6,LR}
CMP             R1, #0
MOV             R4, R0
VPUSH           {D8}
VMOV.F32        S16, S0
MOV             R5, R2
MOV             R6, R3
BLT             loc_194A0C
LDR             R0, [R4,#0xA4]
AND             R1, R1, #0xFF
LDRSH           R3, [R0,#0x14]
LDRSH           R2, [R0,#0x16]
BL              sub_11DCDC
LDR             R1, [R4,#0xA4]
MOV             R0, #0
STR             R0, [R1,#0x1C]
CMP             R5, #0
BLT             loc_194A34
LDR             R0, [R4,#0xA4]
LDRB            R1, [R0,#0x6C]
BL              sub_5F1670
CMP             R0, R5
MOVLE           R5, #0
LDR             R0, [R4,#0xA4]
UXTH            R1, R5
BL              sub_593084
VLDR            S0, =256.0
CMP             R6, #0
LDRGE           R0, [R4,#0xA4]
VMUL.F32        S0, S16, S0
STRHGE          R6, [R0,#0x16]
LDR             R0, [R4,#0xA4]
VPOP            {D8}
ADD             R0, R0, #0x10
POP             {R4-R6,LR}
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
B               sub_123CE8
