PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R6, =off_6D1648
MOV             R5, R1
VPUSH           {D8}
SUB             SP, SP, #0xC
STRH            R7, [R0,#0x62]
LDR             R0, [R0,#0x84]
STRH            R7, [R4,#0x7E]
BIC             R0, R0, #0x7C ; '|'
ORR             R0, R0, #2
STR             R0, [R4,#0x84]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
VLDR            S16, =0.0
CMP             R0, #7
BNE             loc_2A955C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R1, [R0]
LDR             R1, [R1,#0xDC]
BLX             R1
CMP             R0, #0
BEQ             loc_2A955C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0xAC]
LDR             R1, [R0,#0x1A0]
TST             R1, #0x10
BEQ             loc_2A955C
VLDR            S1, [R0,#0x50]
VLDR            S0, [R0,#0x1C]
LDRSB           R0, [R0,#0x4C]
MOV             R1, #0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VMOV            S1, R0
MOV             R0, R1
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VLDR            S1, =0.66667
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x44]
ADD             R2, R4, R1,LSL#2
ADD             R1, R1, #1
VSTR            S0, [R2,#0x48]
ADD             R2, R4, R1,LSL#2
ADD             R0, R0, #2
CMP             R0, #6
ADD             R1, R1, #1
VSTR            S0, [R2,#0x48]
BLT             loc_2A9530
STRH            R7, [R4,#0x60]
B               loc_2A9574
VSTR            S16, [R4,#0x44]
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, R4, #0x48 ; 'H'
BL              sub_110BE4
STRH            R7, [R4,#0x60]
LDR             R0, [R4,#0x14]
LDR             R1, [R0,#0xC]
STR             R1, [R4,#0x18]
LDR             R0, [R0,#0x1C]
STR             R0, [R4,#0x1C]
LDR             R0, [R5,#4]
LDR             R1, [R5]
STR             R0, [R4,#0x24]
MOV             R0, R1
STR             R1, [R4,#0x20]
LDR             R1, [R4,#0x24]
STRD            R0, R1, [R4,#0x28]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160C28
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160CEC
VSTR            S16, [SP,#0x28+var_28]
VSTR            S16, [SP,#0x28+var_24]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
VLDR            S16, =10.0
MOV             R2, SP
MOV             R1, #0
VMOV.F32        S0, S16
BL              sub_1610AC
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
MOV             R1, #0
VMOV.F32        S1, S0
VLDR            S0, =220.0
BL              sub_161154
LDR             R1, [R4,#4]
MOV             R0, #0x1E
ADD             R1, R1, #0x700
STRH            R0, [R1,#0x1C]
LDR             R0, [R4,#4]
MOV             R1, #1
NOP
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2A964C
LDRH            R0, [R0,#0x12]
TST             R0, #0x200
MOVNE           R2, #1
BNE             loc_2A9650
MOV             R2, #0
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R1, R3
BL              sub_507CD8
LDR             R0, [R4,#4]
NOP
BL              sub_505BE4
MOV             R2, #0
VLDM            R5, {S0-S1}
MOV             R1, R2
LDR             R0, =0x2003F
BL              sub_1459F8
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
