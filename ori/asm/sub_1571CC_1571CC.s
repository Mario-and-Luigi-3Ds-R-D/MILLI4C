PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0x14
LDR             R0, [R0,#8]
LDR             R4, [R0,#0x18]
LDR             R0, [R4,#0x204]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_15729C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xC
MOV             R0, R4
BL              sub_14C548
LDR             R7, =off_6CE970
LDR             R6, [R7]
BL              sub_4635D8
MOV             R2, #0
MOV             R1, #7
STMEA           SP, {R1,R2}
MOV             R3, R0
MOV             R2, R4
MOV             R1, #0
MOV             R0, R6
BL              sub_52AE1C
LDR             R0, =0xFFE683CC
LDR             R12, [R7]
LDRH            R1, [R4,#0x10]
LDR             R2, =0x30088
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R5,#0x14]
VLDR            S0, =0.5
LDR             R1, [R0,#0x40]
STR             R1, [SP,#0x28+var_28]
LDR             R1, [R0,#0x3C]
VLDR            S1, [SP,#0x28+var_28]
STR             R1, [SP,#0x28+var_28]
LDR             R0, [R0,#0x38]
VMUL.F32        S2, S1, S0
VMOV            S1, R0
STR             R0, [SP,#0x28+var_24]
MOV             R0, R5
VMUL.F32        S0, S1, S0
VMOV            S1, R1
BL              sub_1570A4
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE40 - 0x63FDB0)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
