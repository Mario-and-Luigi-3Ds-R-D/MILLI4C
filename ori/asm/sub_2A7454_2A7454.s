PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x3FC]
BL              sub_127FD4
LDR             R0, [R4,#0x3AC]
MOV             R1, #0x300
STR             R1, [SP,#0x30+var_30]
ADD             R1, R0, #0x20 ; ' '
MOV             R3, #0
MOV             R2, #1
MOV             R0, R4
BL              sub_5C4A88
LDR             R0, [R4,#0x9C]
ADD             R2, SP, #0x30+var_2C
MOV             R1, #0
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R4,#0x3AC]
BL              sub_12C9C4
LDR             R0, [R4,#0xA0]
ADD             R2, SP, #0x30+var_2C
MOV             R1, #1
STR             R0, [SP,#0x30+var_2C]
LDR             R0, [R4,#0x3AC]
BL              sub_12C9C4
LDR             R0, [R4,#0x3FC]
BL              sub_128004
LDR             R0, [R4,#0x3AC]
LDR             R1, [R4,#0x3FC]
BL              sub_12CA08
LDR             R0, [R4,#0x3F8]
CMP             R0, #0
BEQ             loc_2A75C8
ADD             R1, R4, #0x24 ; '$'
MOV             R5, #0x400
VLDM            R1, {S17-S18}
MOV             R0, R5
VLDR            S16, [R4,#0x2C]
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S0, S0
VADD.F32        S17, S0, S17
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
LDR             R7, =off_6CE970
LDR             R0, =0x1210D4
ADD             R5, R4, #0x5C00
LDR             R1, [R7]
VCVT.F32.U32    S0, S0
VSTR            S17, [R5,#0x2A4]
ADD             R6, R1, R0; loc_1210D4
LDR             R1, =0x5C30
ADD             R0, R4, #0x400
VSUB.F32        S0, S0, S18
VSTR            S0, [R5,#0x2A8]
LDR             R1, [R1,R4]
TST             R1, #1
BEQ             loc_2A7558
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
ADD             R1, R6, #0x54 ; 'T'
VLDR            S3, =0.0
VMOV.F32        S0, S16
VLDM            R1, {S1-S2}
ADD             R0, R4, #0x400
VCMP.F32        S1, S3
VSTR            S0, [R5,#0x2AC]
VMRS            APSR_nzcv, FPSCR
VCMPNE.F32      S2, S3
VMRSNE          APSR_nzcv, FPSCR
BLNE            sub_2C292C
VLDR            S0, [R5,#0x2AC]
MOV             R1, R6
ADD             R0, R4, #0x400
BL              sub_2C20F0
LDR             R0, [R4,#0x9C]
MOV             R3, #0
MOV             R2, R3
STR             R0, [R5,#0xC]
LDR             R1, [R4,#0x3F8]
ADD             R0, R4, #0x400
BL              sub_2C0F9C
LDR             R0, [R7]
LDR             R3, =0x139014
MOV             R2, #1
ADD             R1, R4, #0x400
ADD             R0, R0, R3; loc_139014
BL              sub_2BEC88
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R7,PC}
