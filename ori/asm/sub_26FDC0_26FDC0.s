PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A2484
LDR             R0, [R4,#4]
ADD             R1, R4, #0xC
BL              sub_2715F4
ADD             R0, R4, #8
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_26FE1C
LDR             R0, [R4,#4]
POP             {R4,LR}
B               sub_2703E8
POP             {R4,PC}
