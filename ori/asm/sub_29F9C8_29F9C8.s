PUSH            {R0-R11,LR}
MOV             R4, R0
ADD             R6, R4, #0x5800
MOV             R7, R2
ADD             R2, R4, #0x5800
ADD             R2, R2, #0x18C
MOV             R9, R3
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
ADD             R10, R4, #0x5800
LDR             R5, [SP,#0x50+arg_4]
LDR             R8, [SP,#0x50+arg_0]
LDRD            R0, R1, [R4,#0x98]
LDRB            R11, [R4,#0x133]
VLDR            S19, [R4,#0x28]
STM             R2, {R0,R1}
CMP             R5, #0
VLDR            S16, =0.0
VLDR            S0, [R7,#8]
ADD             R6, R6, #0x174
BEQ             loc_29FA58
ADD             R1, R5, #0x54 ; 'T'
ADD             R0, R4, #0x174
VLDM            R1, {S1-S2}
VSTR            S0, [R6,#0x2AC]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
VCMPNE.F32      S2, S16
VMRSNE          APSR_nzcv, FPSCR
BLNE            sub_2C292C
ADD             R0, R4, #0x5C00
MOV             R1, R5
VLDR            S0, [R0,#0x20]
ADD             R0, R4, #0x174
BL              sub_2C20F0
B               loc_29FA8C
LDR             R0, =flt_658014
LDR             R1, =flt_658018
VLDR            S1, [R0]
VLDR            S2, [R1]
ADD             R0, R4, #0x174
VCMP.F32        S1, S16
VSTR            S0, [R6,#0x2AC]
VMRS            APSR_nzcv, FPSCR
BEQ             loc_29FA88
VCMP.F32        S2, S16
VMRS            APSR_nzcv, FPSCR
BLNE            sub_2C292C
VSTR            S16, [R10,#0x1C4]
LDR             R0, [SP,#0x50+var_30]
BL              sub_4A1234
CMP             R9, R8
VLDR            S18, [R7]
VLDR            S16, [R7,#4]
ADDNE           R10, R4, #0x5800
MOV             R5, R9
ADDNE           R10, R10, #0x1A4
BEQ             loc_29FB90
LDR             R1, [R4,#0xB0]
ADD             R7, R5, R5,LSL#2
MOV             R0, #8
ADD             R0, R0, R7,LSL#2
MOV             R2, #1
LDRB            R0, [R1,R0]
ADD             R1, SP, #0x50+var_4C
CMP             R0, #0
LDRNE           R0, [R4,#0xDC]
LDREQ           R0, [R4,#0xE0]
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R11,LSL#24
STR             R0, [SP,#0x50+var_4C]
ADD             R0, R4, #0x174
BL              sub_2C2180
VLDR            S0, [R4,#0x24]
VSTR            S0, [SP,#0x50+var_50]
VMOV            R0, S0
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
LDR             R0, [SP,#0x50+var_50]
VCVT.F32.U32    S0, S0
VADD.F32        S17, S0, S18
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VSTR            S17, [R6,#0x2A4]
ADD             R0, R4, #0x174
VCVT.F32.U32    S0, S0
VSUB.F32        S0, S0, S16
VSTR            S0, [R6,#0x2A8]
LDR             R1, [R10]
TST             R1, #1
BEQ             loc_29FB48
LDR             R1, [R0]
LDR             R1, [R1,#0x2C]
BLX             R1
LDR             R1, [R4,#0xB0]
MOV             R0, #0xC
ADD             R0, R0, R7,LSL#2
MOV             R3, #0
LDR             R1, [R1,R0]
MOV             R2, R3
ADD             R0, R4, #0x174
BL              sub_2C0F9C
CMP             R5, R9
LDR             R0, [SP,#0x50+var_30]
MOVEQ           R2, #1
MOVNE           R2, #0
ADD             R1, R4, #0x174
BL              sub_2BEC88
VSUB.F32        S16, S16, S19
ADD             R5, R5, #1
CMP             R5, R8
BNE             loc_29FAB0
ADD             SP, SP, #0xC
VPOP            {D8-D9}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
