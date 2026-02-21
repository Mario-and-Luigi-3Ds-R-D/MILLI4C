PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R1, [R0,#0x10]
LDR             R0, =dword_64E930
CMP             R1, #0
LDREQ           R1, [R0,#(dword_64E940 - 0x64E930)]
LDREQ           R0, [R0,#(off_64E944 - 0x64E930)]
LDRNE           R1, [R0,#0x18]
LDRNE           R0, [R0,#0x1C]
CMP             R1, #0
BNE             loc_149F88
TST             R0, #1
BEQ             loc_14A034
CMP             R0, #0
BEQ             loc_14A034
LDR             R0, [R4,#4]
VLDR            S1, =256.0
LDR             R1, =0x7FFF
ADD             R0, R0, #0x1C00
VLDR            S0, [R0,#0x90]
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R1, R0
MOVLE           R0, R1
BLE             loc_149FC0
CMN             R0, #0x8000
LDRLE           R0, =0xFFFF8000
LDR             R5, =off_6CE970
MOV             R2, #1
SXTH            R1, R0
LDR             R0, [R5]
BL              sub_530184
LDR             R1, [R5]
LDR             R0, [R4,#4]
VLDR            S2, =0.0039062
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
ADD             R2, R0, #0x1C00
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VLDR            S0, [R2,#0x94]
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VMUL.F32        S16, S0, S2
VMOV.F32        S0, S16
BL              sub_547AD0
VMOV.F32        S0, S16
LDR             R0, [R4,#0x10]
BL              sub_5666E8
LDR             R0, [R4,#0x10]
NOP
BL              sub_566170
LDR             R0, [R4,#0x10]
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_5661F0
VPOP            {D8}
MOV             R0, #0
POP             {R4-R6,PC}
