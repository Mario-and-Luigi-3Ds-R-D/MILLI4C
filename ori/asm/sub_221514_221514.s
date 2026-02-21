PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_221540
LDRH            R0, [R0,#0x12]
TST             R0, #0x200
MOVNE           R2, #1
BNE             loc_221544
MOV             R2, #0
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R1, R3
BL              sub_507CD8
MOV             R0, #1
MOV             R6, #0
STRH            R0, [R4,#0x26]
STRH            R6, [R4,#0x12]
LDR             R0, [R4,#0x28]
LDR             R5, =off_6D1648
ORR             R0, R0, #4
STR             R0, [R4,#0x28]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #9
LDR             R0, [R5]
VLDR            S17, =0.0
VLDR            S16, =15.0
MOV             R7, #0x2D ; '-'
BEQ             loc_2215E0
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #0xB
NOP
BEQ             loc_22165C
LDR             R0, [R4,#0x28]
BIC             R0, R0, #4
STR             R0, [R4,#0x28]
ORR             R0, R0, #8
STRH            R6, [R4,#0x24]
STR             R0, [R4,#0x28]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R1, [R0,#0x3D0]
TST             R1, #0x3C
BNE             loc_221608
BIC             R1, R1, #0x3C ; '<'
ORR             R1, R1, #4
STR             R1, [R0,#0x3D0]
LDR             R1, [R4,#0x28]
MOV             R2, R7
TST             R1, #1
MOVNE           R1, #0
MOVEQ           R1, #1
BL              sub_196714
VLDR            S0, =-80.0
VSTR            S17, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
MOV             R2, SP
MOV             R1, #0
BL              sub_1610AC
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
VLDR            S0, =680.0
B               loc_2216D0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
LDR             R1, [R4,#0x28]
ADD             R0, R0, #0x15000
MOV             R2, R7
TST             R1, #1
LDR             R0, [R0,#0x1CC]
MOVNE           R1, #0
MOVEQ           R1, #1
BL              sub_37F83C
VLDR            S0, =-40.0
VSTR            S17, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
MOV             R2, SP
MOV             R1, #0
BL              sub_1610AC
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#0x28]
VMOV.F32        S1, S16
TST             R1, #1
MOVNE           R1, #0x230
MOVEQ           R1, #0x2A8
VMOV            S0, R1
VCVT.F32.U32    S0, S0
MOV             R1, #0
BL              sub_161154
LDR             R0, [R4,#4]
ADD             R0, R0, #0x700
STRH            R6, [R0,#0x1C]
LDR             R0, [R4,#0x28]
B               loc_2215C8
