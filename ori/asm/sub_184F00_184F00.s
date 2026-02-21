PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
VLDR            S16, =1.0
ADD             R0, R0, #0x354
VMOV.F32        S0, S16
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R4, #0x12C
STR             R0, [R4,#0x134]
ADD             R0, R4, #0x2B8
STM             R3, {R1,R2}
BL              sub_5A176C
VCVT.S32.F32    S0, S0
MOV             R1, #0xFFFFFF00
MOV             R2, SP
VMOV            R0, S0
ORR             R0, R0, R1
MOV             R1, #0
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #0xC
BL              sub_12C9C4
ADD             R0, R4, #0x354
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_184F94
MOV             R0, #0
MOV             R1, #1
STRB            R0, [R4,#0x11C]
STRB            R1, [R4,#0x7F]
LDR             R1, =off_6738C0
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4,PC}
