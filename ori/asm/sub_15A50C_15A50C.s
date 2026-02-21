PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R4, R0
LDR             R6, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #8
LDRD            R0, R1, [R5]
STRD            R0, R1, [R4,#0xC8]
STRD            R0, R1, [R4,#0xD0]
STRD            R0, R1, [R4,#0xD8]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
BL              sub_160C28
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
BL              sub_160CEC
LDR             R0, [R4,#0xFC]
VLDR            S1, =-28.0
VLDR            S17, =220.0
VLDR            S16, =10.0
TST             R0, #2
MOV             R7, #0x1E
MOV             R8, #0
BEQ             loc_15A5F8
VLDR            S2, =-48.0
VSTR            S2, [SP,#0x28+var_28]
VSTR            S1, [SP,#0x28+var_24]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
VMOV.F32        S0, S17
MOV             R1, #0
BL              sub_161154
LDR             R0, [R4,#4]
ADD             R0, R0, #0x700
STRH            R7, [R0,#0x1C]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
VMOV.F32        S0, S16
MOV             R2, SP
MOV             R1, #0
BL              sub_1610AC
LDR             R0, [R4,#0xFC]
VLDR            S0, =1.0
MOV             R1, #1
BIC             R0, R0, #0x4C ; 'L'
VSTR            S0, [R4,#0xF0]
ORR             R0, R0, #1
STR             R0, [R4,#0xFC]
LDR             R0, [R4,#4]
NOP
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_15A618
LDRH            R0, [R0,#0x12]
TST             R0, #0x200
MOVNE           R2, #1
BEQ             loc_15A618
B               loc_15A61C
VLDR            S2, =48.0
VSTR            S2, [SP,#0x28+var_28]
VSTR            S1, [SP,#0x28+var_24]
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S16
NOP
B               loc_15A584
MOV             R2, #0
MOV             R3, #1
LDR             R0, [R4,#4]
MOV             R1, R3
BL              sub_507CD8
LDR             R0, [R4,#4]
NOP
BL              sub_505BE4
LDR             R1, [R4,#0x14]
LDR             R0, [R1,#0xC]
LDR             R1, [R1,#0x1C]
STRD            R0, R1, [R4,#0xB0]
LDR             R1, [R4,#0x18]
LDR             R0, [R1,#0xC]
LDR             R1, [R1,#0x1C]
STRD            R0, R1, [R4,#0xB8]
LDR             R1, [R4,#0x1C]
LDR             R0, [R1,#0xC]
LDR             R1, [R1,#0x1C]
STRD            R0, R1, [R4,#0xC0]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R1, [R0,#0x1B4]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x1B4]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R2, #0
STRB            R8, [R0,#0xDE]
LDR             R0, =0x2003B
MOV             R1, R2
VLDM            R5, {S0-S1}
BL              sub_1459F8
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
