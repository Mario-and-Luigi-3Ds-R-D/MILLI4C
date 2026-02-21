PUSH            {R3-R7,LR}
MOV             R12, R0
MOV             R6, R2
MOV             R2, R3
LDRH            R3, [R3]
MOV             R5, R1
ADD             R1, R2, #8
SUB             R3, R3, #0x100
SUBS            R3, R3, #0x16
ADD             R0, R2, #0x68 ; 'h'
MOV             R4, #0
BEQ             loc_17D798
CMP             R3, #1
BEQ             loc_17D7FC
CMP             R3, #2
BEQ             loc_17D86C
CMP             R3, #3
BNE             loc_17D8B4
B               loc_17D898
LDR             R2, [R1]
LDR             R1, [R1,#0x18]
LDR             R12, [R12,#4]
VLDR            S3, =2.0
CMP             R1, #0
AND             R1, R2, #0xFF
ADD             R2, R0, #8
VLDR            S4, =4.0
VLDR            S0, [R0,#4]
ADD             R3, R12, #0x14000
VLDM            R2, {S1-S2}
ADD             R2, R0, #0x10
LDR             R0, [R12]
ADD             R3, R3, #0x3D8
VLDM            R2, {S5-S6}
VMUL.F32        S1, S1, S3
VMUL.F32        S2, S2, S4
LDR             R5, [R0,#0x268]
VMUL.F32        S3, S5, S3
VMUL.F32        S4, S6, S4
MOVNE           R2, #1
MOVEQ           R2, #0
MOV             R0, R12
BLX             R5
B               loc_17D8B4
LDR             R2, [R1]
VLDR            S0, [R0,#4]
LDR             R0, [R1,#8]
AND             R5, R2, #0xFF
VLDR            S1, =0.5
BIC             R2, R0, #1
VMOV            S2, R2
TST             R0, #1
LDR             R0, [R1,#0xC]
LDR             R12, [R12,#4]
MOV             R1, R5
VCVT.F32.U32    S2, S2
VMUL.F32        S1, S2, S1
VLDRNE          S2, =1.0
VADDNE.F32      S1, S1, S2
CMP             R0, #0
ADD             R0, R12, #0x14000
ADD             R0, R0, #0x3D8
STR             R0, [SP,#0x18+var_18]
LDR             R0, [R12]
MOVNE           R3, #1
MOVEQ           R3, #0
LDR             R6, [R0,#0x26C]
VCVT.S32.F32    S1, S1
MOV             R0, R12
VMOV            R2, S1
BLX             R6
B               loc_17D8B4
LDR             R0, [R12,#4]
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x3D8]
TST             R0, #1
BEQ             loc_17D8B4
MOV             R1, R6
MOV             R0, R5
BL              sub_29D1B0
MOV             R4, #3
NOP
B               loc_17D8B4
LDR             R0, [R12,#4]
ADD             R2, R0, #0x14000
LDR             R1, [R0]
ADD             R2, R2, #0x3D8
LDR             R3, [R1,#0x270]
MOV             R1, #0
BLX             R3
MOV             R0, R4
POP             {R3-R7,PC}
