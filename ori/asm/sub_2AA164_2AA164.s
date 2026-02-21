PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0
VPUSH           {D8}
SUB             SP, SP, #8
STRH            R0, [R4,#0x3E]
STRH            R0, [R4,#0x40]
LDR             R0, [R4,#0x4C]
MOV             R5, R1
LDR             R6, =off_6D1648
BIC             R0, R0, #0x12
ORR             R0, R0, #8
STR             R0, [R4,#0x4C]
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
BL              sub_160C28
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
BL              sub_160CEC
VLDR            S0, =0.0
VSTR            S0, [SP,#0x20+var_20]
VSTR            S0, [SP,#0x20+var_1C]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
VLDR            S16, =10.0
MOV             R2, SP
MOV             R1, #0
VMOV.F32        S0, S16
BL              sub_1610AC
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
VLDR            S0, =220.0
MOV             R1, #0
BL              sub_161154
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
LDR             R1, [R4,#4]
CMP             R0, #0xB
MOVEQ           R0, #0x78 ; 'x'
ADD             R1, R1, #0x700
MOVNE           R0, #0x1E
STRH            R0, [R1,#0x1C]
LDR             R0, [R4,#4]
MOV             R1, #1
NOP
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2AA274
LDRH            R0, [R0,#0x12]
TST             R0, #0x200
MOVNE           R2, #1
BNE             loc_2AA278
MOV             R2, #0
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R1, R3
BL              sub_507CD8
LDR             R0, [R4,#4]
NOP
BL              sub_505BE4
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A0F0
TST             R0, #4
STRH            R0, [R4,#0x48]
LDR             R0, [R4,#0x4C]
MOV             R2, #0
MOV             R1, R2
BICNE           R0, R0, #1
ORREQ           R0, R0, #1
STR             R0, [R4,#0x4C]
LDR             R0, =0x2003F
VLDM            R5, {S0-S1}
BL              sub_1459F8
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
