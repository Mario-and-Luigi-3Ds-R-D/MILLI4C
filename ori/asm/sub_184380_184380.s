PUSH            {R4-R8,LR}
MOV             R6, R3
MOV             R8, R2
LDR             R2, [R0]
MOV             R7, R1
LDR             R1, [R3,#8]
ADD             R4, R3, #8
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R1
SUB             SP, SP, #0x18
MOV             R1, R8
BLX             R12
LDRH            R1, [R6]
VLDR            S1, =0.5
VLDR            S0, =1.0
SUB             R1, R1, #0x9E
CMP             R1, #6; switch 6 cases
MOV             R12, #1
MOV             R5, #0
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1843D0; jumptable 001843D0 default case
DCD loc_1843F0; jump table for switch statement
ADD             R1, R4, #8; jumptable 001843D0 case 0
LDM             R1, {R1-R3,R6}
STRB            R1, [SP,#0x30+var_20]
STRB            R2, [SP,#0x30+var_1F]
STRB            R3, [SP,#0x30+var_1E]
STRB            R6, [SP,#0x30+var_1D]
LDR             R1, [R4,#0x24]
BIC             R2, R1, #1
VMOV            S2, R2
TST             R1, #1
LDR             R1, [R4,#0x20]
BIC             R2, R1, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S1
VADDNE.F32      S2, S2, S0
TST             R1, #1
LDR             R1, [R4,#0x1C]
VCVT.S32.F32    S3, S2
VMOV            S2, R2
BIC             R2, R1, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S1
VADDNE.F32      S2, S2, S0
TST             R1, #1
LDR             R1, [R4,#0x18]
VCVT.S32.F32    S4, S2
VMOV            S2, R2
BIC             R2, R1, #1
VMOV            S5, R2
VCVT.F32.U32    S2, S2
VCVT.F32.U32    S5, S5
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S5, S1
VADDNE.F32      S2, S2, S0
TST             R1, #1
VADDNE.F32      S1, S1, S0
VCVT.S32.F32    S2, S2
VCVT.S32.F32    S0, S1
VSTR            S2, [SP,#0x30+var_30]
VSTR            S4, [SP,#0x30+var_2C]
VSTR            S3, [SP,#0x30+var_28]
STR             R12, [SP,#0x30+var_24]
LDR             R2, [R0]
LDR             R1, [R4,#4]
VMOV            R3, S0
LDR             R12, [R2,#0xB4]
AND             R1, R1, #0xFF
ADD             R2, SP, #0x30+var_20
BLX             R12
B               def_1843D0; jumptable 001843D0 default case
LDR             R1, [R0]; jumptable 001843D0 case 1
LDR             R1, [R1,#0xCC]
BLX             R1
CMP             R0, #0
BEQ             def_1843D0; jumptable 001843D0 default case
B               loc_1845C0
LDR             R1, [R0]; jumptable 001843D0 case 2
LDR             R2, [R1,#0xB8]
MOV             R1, #0
BLX             R2
B               def_1843D0; jumptable 001843D0 default case
ADD             R1, R4, #8; jumptable 001843D0 case 3
LDM             R1, {R1-R3,R6}
STRB            R1, [SP,#0x30+var_20]
STRB            R2, [SP,#0x30+var_1F]
STRB            R3, [SP,#0x30+var_1E]
STRB            R6, [SP,#0x30+var_1D]
LDR             R1, [R4,#0x24]
BIC             R2, R1, #1
VMOV            S2, R2
TST             R1, #1
LDR             R1, [R4,#0x20]
BIC             R2, R1, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S1
VADDNE.F32      S2, S2, S0
TST             R1, #1
LDR             R1, [R4,#0x1C]
VCVT.S32.F32    S3, S2
VMOV            S2, R2
BIC             R2, R1, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S1
VADDNE.F32      S2, S2, S0
TST             R1, #1
LDR             R1, [R4,#0x18]
VCVT.S32.F32    S4, S2
VMOV            S2, R2
BIC             R2, R1, #1
VMOV            S5, R2
VCVT.F32.U32    S2, S2
VCVT.F32.U32    S5, S5
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S5, S1
VADDNE.F32      S2, S2, S0
TST             R1, #1
VADDNE.F32      S1, S1, S0
VCVT.S32.F32    S2, S2
VCVT.S32.F32    S0, S1
VSTR            S2, [SP,#0x30+var_30]
VSTR            S4, [SP,#0x30+var_2C]
VSTR            S3, [SP,#0x30+var_28]
STR             R12, [SP,#0x30+var_24]
LDR             R2, [R0]
LDR             R1, [R4,#4]
VMOV            R3, S0
LDR             R12, [R2,#0x94]
AND             R1, R1, #0xFF
ADD             R2, SP, #0x30+var_20
BLX             R12
B               def_1843D0; jumptable 001843D0 default case
LDR             R1, [R0]; jumptable 001843D0 case 4
LDR             R1, [R1,#0xAC]
BLX             R1
CMP             R0, #0
BEQ             def_1843D0; jumptable 001843D0 default case
MOV             R2, R6
MOV             R1, R8
MOV             R0, R7
BL              sub_29D1B0
MOV             R5, #3
NOP
B               def_1843D0; jumptable 001843D0 default case
LDR             R1, [R0]; jumptable 001843D0 case 5
LDR             R2, [R1,#0x98]
MOV             R1, #0
BLX             R2
ADD             SP, SP, #0x18; jumptable 001843D0 default case
MOV             R0, R5
POP             {R4-R8,PC}
