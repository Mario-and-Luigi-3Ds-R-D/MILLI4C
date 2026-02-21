PUSH            {R4-R8,LR}
CMP             R1, #0
MOV             R5, R3
VPUSH           {D8-D10}
LDR             R4, [SP,#0x30+arg_8]
LDR             R6, [SP,#0x30+arg_4]
VLDR            S21, [SP,#0x30+arg_0]
BEQ             loc_1F06CC
VLDM            R2, {S16-S17}
VLDR            S0, [R5]
VLDR            S1, [R3,#4]
B               loc_1F0738
LDR             R7, =0x401
VLDM            R2, {S16-S17}
MOV             R0, R7
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R7
VCVT.F32.U32    S18, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VADD.F32        S16, S16, S18
VLDM            R5, {S18-S19}
MOV             R0, R7
VCVT.F32.U32    S0, S0
VSUB.F32        S17, S0, S17
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R7
VCVT.F32.U32    S20, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S1, R0
VADD.F32        S0, S18, S20
VCVT.F32.U32    S1, S1
VSUB.F32        S1, S1, S19
VCMP.F32        S0, S16
LDR             R0, [R4]
VMRS            APSR_nzcv, FPSCR
VCMP.F32        S1, S17
ORRNE           R0, R0, #1
BICEQ           R0, R0, #1
STR             R0, [R4]
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #2
BICEQ           R0, R0, #2
TST             R0, #3
STR             R0, [R4]
MOVEQ           R0, #0
BEQ             loc_1F07D4
ADD             R1, R4, #0x18
VCVT.F32.S32    S4, S21
VSTM            R1, {S16-S17}
ADD             R1, R4, #0x20 ; ' '
VSTR            S21, [R4,#0x28]
BIC             R0, R0, #8
VSTM            R1, {S0-S1}
ADD             R1, R4, #8
ORR             R0, R0, #4
VSTM            R1, {S16-S17}
ADD             R1, R4, #0x18
ORR             R0, R0, R6,LSL#3
VLDM            R1, {S2-S3}
MOV             R1, #0
BIC             R0, R0, #0x10
VSUB.F32        S0, S0, S2
VMOV.F32        S2, S21
VSUB.F32        S1, S1, S3
VCVT.F32.S32    S3, S2
VDIV.F32        S2, S0, S3
VSTR            S2, [R4,#0x10]
VDIV.F32        S0, S1, S4
VSTR            S0, [R4,#0x14]
STRD            R0, R1, [R4]
MOV             R0, #1
VPOP            {D8-D10}
POP             {R4-R8,PC}
