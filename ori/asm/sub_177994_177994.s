PUSH            {R4-R7,LR}
MOV             R6, R3
ADD             R4, R3, #0x68 ; 'h'
ADD             R5, R3, #8
LDR             R3, [R0]
LDR             R1, [R5]
MOV             R7, R2
LDR             R2, [R0,#4]
LDR             R12, [R3,#0x9C]
SXTB            R3, R1
SUB             SP, SP, #0x14
MOV             R1, R7
BLX             R12
LDRH            R1, [R6]
MOV             R6, #0
SUB             R1, R1, #0xC9
CMP             R1, #0xE; switch 14 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1779D8; jumptable 001779D8 default case
DCD loc_177A18; jump table for switch statement
LDR             R1, [R0]; jumptable 001779D8 case 0
ADD             R4, R4, #4
VLDM            R4, {S0-S3}
LDR             R1, [R1,#0x22C]
BLX             R1
B               def_1779D8; jumptable 001779D8 default case
VLDR            S1, [R4,#4]; jumptable 001779D8 case 1
VLDR            S0, =2.0
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x28+var_28]
VLDR            S1, [R4,#8]
VMUL.F32        S0, S1, S0
VLDR            S1, =0.5
VSTR            S0, [SP,#0x28+var_24]
LDR             R1, [R4,#0xC]
STR             R1, [SP,#0x28+var_20]
LDR             R1, [R5,#0x10]
BIC             R2, R1, #1
VMOV            S0, R2
TST             R1, #1
MOV             R2, #0xFFFFFFFF
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VSTR            S0, [SP,#0x28+var_1C]
VLDR            S0, [R5,#0x14]
VCVT.F32.S32    S0, S0
VSTR            S0, [SP,#0x28+var_18]
LDR             R1, [R0]
LDR             R3, [R1,#0x230]
MOV             R1, SP
BLX             R3
B               def_1779D8; jumptable 001779D8 default case
ADD             R1, R0, #0x400; jumptable 001779D8 case 2
LDR             R2, [R5,#4]
LDR             R0, [R0,#0x6B8]
ADD             R1, R1, #0x2B8
AND             R2, R2, #1
BIC             R0, R0, #1
ORR             R0, R0, R2
STR             R0, [R1]
B               def_1779D8; jumptable 001779D8 default case
LDR             R1, [R0]; jumptable 001779D8 case 3
LDR             R1, [R1,#0x238]
B               loc_177B90
LDR             R1, [R0]; jumptable 001779D8 cases 5,11
LDR             R1, [R1,#0x250]
B               loc_177B90
LDR             R1, [R0]; jumptable 001779D8 cases 6,12
LDR             R1, [R1,#0x254]
B               loc_177B90
LDR             R1, [R0]; jumptable 001779D8 case 7
LDR             R2, [R1,#0x234]
MOV             R1, #0xFFFFFFFF
BLX             R2
B               def_1779D8; jumptable 001779D8 default case
LDR             R1, [R7]; jumptable 001779D8 case 8
LDR             R2, [R5,#4]
VLDR            S1, =0.5
ADD             R1, R1, R2
LDRH            R2, [R1],#2
LDRH            R3, [R1]
AND             R2, R2, #0xFF
SUB             R2, R2, #4
STRH            R3, [SP,#0x28+var_28]
LDRH            R3, [R1,#2]
STRH            R3, [SP,#0x28+var_28+2]
LDRH            R3, [R1,#4]
STRH            R3, [SP,#0x28+var_24]
LDRSH           R3, [R1,#6]
BIC             R12, R3, #1
VMOV            S0, R12
TST             R3, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R3, S0
STRH            R3, [SP,#0x28+var_24+2]
ADD             R3, R2, R2,LSR#31
LDR             R2, [R0]
MOV             R3, R3,ASR#1
LDR             R12, [R2,#0x23C]
ADD             R2, R1, #8
MOV             R1, SP
BLX             R12
B               def_1779D8; jumptable 001779D8 default case
LDR             R1, [R0]; jumptable 001779D8 case 9
LDR             R1, [R1,#0x244]
B               loc_177B90
LDR             R1, [R0]; jumptable 001779D8 cases 4,10
LDR             R1, [R1,#0x24C]
BLX             R1
B               def_1779D8; jumptable 001779D8 default case
LDR             R1, [R0]; jumptable 001779D8 case 13
LDR             R1, [R1,#0x240]
BLX             R1
ADD             SP, SP, #0x14; jumptable 001779D8 default case
MOV             R0, R6
POP             {R4-R7,PC}
