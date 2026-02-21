PUSH            {R4-R6,LR}
CMP             R1, #0
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x60
MOV             R6, #0
VLDR            S17, =4.0
VLDR            S16, =0.0
MOVNE           R5, #0
BEQ             loc_29C51C
VMOV.F32        S0, S16
MOV             R0, #4
STR             R0, [R4,#0x190]
LDR             R1, [R4,#8]
LDR             R0, =0x2033D
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
STRB            R6, [R4,#0x18C]
BL              sub_4635D8
LDR             R3, [R4,#8]
ADD             R2, R4, R5,LSL#1
ADD             R2, R2, #0x100
LDR             R1, [R3,#4]
STR             R0, [SP,#0x80+var_80]
LDR             R0, =off_6D1648
ADD             R1, R1, #0x14000
LDRH            R2, [R2,#0x88]
LDR             R1, [R1,#0x180]
LDR             R0, [R0]
AND             R1, R1, #0xFF
LDR             R0, [R0,#0xA0]
BL              sub_2D4020
MOV             R5, R0
LDR             R0, [R4,#8]
MOV             R2, #0
LDR             R1, [R0,#0xE0]!
LDR             R3, [R1,#0xC]
ADD             R1, SP, #0x80+var_50
BLX             R3
ADD             R1, SP, #0x80+var_50
ADD             LR, SP, #0x80+var_30
VLDM            R1, {S0-S7}
ADD             R1, R5, #0x7C ; '|'
ADD             R0, R5, #0x9C
VSTM            R1, {S0-S7}
LDM             LR, {R1-R3,R12}
STM             R0, {R1-R3}
MOV             R1, #1
ADD             R0, R4, #0xC
STR             R12, [R5,#0xA8]
BL              sub_1E8FFC
STR             R6, [SP,#0x80+var_64]
VSTR            S16, [SP,#0x80+var_78]
VLDR            S18, =1.0
VSTR            S16, [SP,#0x80+var_74]
VSTR            S16, [SP,#0x80+var_70]
VSTR            S18, [SP,#0x80+var_6C]
ADD             R3, SP, #0x80+var_78
ADD             R2, SP, #0x80+var_64
MOV             R1, #0
MOV             R0, R4
BL              sub_29CCC0
LDR             R5, [SP,#0x80+var_6C]
ADD             R0, R4, #0x194
BL              sub_5A18EC
VMOV.F32        S1, S17
VMOV.F32        S0, S16
STR             R5, [R4,#0x1A0]
MOV             R1, #0
ADD             R0, R4, #0x194
STR             R5, [R4,#0x198]
BL              sub_5A1218
VMOV.F32        S0, S18
ADD             R0, R4, #0x194
BL              sub_5A176C
LDR             R0, [R4,#0x198]
ADD             R1, SP, #0x80+var_78
STR             R0, [SP,#0x80+var_6C]
ADD             R0, SP, #0x80+var_64
BL              sub_4BE9C4
LDR             R1, =off_67E548
LDRD            R0, R1, [R1,#(off_67E558 - 0x67E548)]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x60 ; '`'
VPOP            {D8-D9}
POP             {R4-R6,PC}
STR             R6, [R4,#0x190]
LDR             R0, [R4,#8]
MOV             R5, #1
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
VMOV.F32        S0, S16
LDR             R1, [R4,#8]
LDR             R0, =0x2033E
MOV             R2, #0
VMOV.F32        S1, S0
B               loc_29C404
