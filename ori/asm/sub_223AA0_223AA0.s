PUSH            {R4,LR}
LDR             R1, [R0]
SUB             SP, SP, #0x20
LDR             R2, [R1,#8]
ADD             R1, SP, #0x28+var_18
BLX             R2
LDR             R4, =off_6CE970
MOV             R1, #0
MOV             R3, #1
ADD             R2, SP, #0x28+var_18
LDR             R0, [R4]
STR             R1, [SP,#0x28+var_28]
MOV             R1, #0x84
BL              sub_52AEA8
MOV             R2, #1
ADD             R1, SP, #0x28+var_18
ADD             R0, SP, #0x28+var_24
BL              sub_14C614
MOV             R0, #0x400
BL              sub_11C418
VMOV            S0, R0
VLDR            S1, [SP,#0x28+var_24]
LDR             R0, =0xFFE683CC
LDR             R1, =0x300F6
MOV             R2, #0
VCVT.F32.U32    S2, S0
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x28+var_24]
LDR             R3, [R4]
SUB             R0, R3, R0
BL              sub_503414
ADD             SP, SP, #0x20 ; ' '
POP             {R4,PC}
