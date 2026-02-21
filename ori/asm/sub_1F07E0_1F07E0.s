PUSH            {R4-R8,LR}
CMP             R1, #0
MOV             R5, R3
VPUSH           {D8-D12}
VMOV.F32        S18, S0
VMOV.F32        S20, S1
VMOV.F32        S21, S2
VMOV.F32        S24, S3
LDR             R4, [SP,#0x40+arg_4]
LDR             R6, [SP,#0x40+arg_0]
BEQ             loc_1F081C
VLDM            R2, {S16-S17}
VLDR            S0, [R5]
VLDR            S1, [R3,#4]
B               loc_1F088C
LDR             R7, =0x401
VLDM            R2, {S16-S17}
MOV             R0, R7
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R7
VCVT.F32.U32    S19, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S0, R0
VADD.F32        S16, S16, S19
VLDR            S19, [R5]
VLDR            S22, [R5,#4]
MOV             R0, R7
VCVT.F32.U32    S0, S0
VSUB.F32        S17, S0, S17
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
MOV             R0, R7
VCVT.F32.U32    S23, S0
BL              sub_485B0C
MOV             R0, R0,LSR#1
VMOV            S1, R0
VADD.F32        S0, S19, S23
VCVT.F32.U32    S1, S1
VSUB.F32        S1, S1, S22
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
BEQ             loc_1F098C
VSTR            S18, [R4,#0x28]
VSTR            S24, [R4,#0x34]
ADD             R0, R4, #8
VLDR            S3, =0.0
VSTM            R0, {S16-S17}
ADD             R0, R4, #0x20 ; ' '
VCMPE.F32       S18, S3
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x18
VSTM            R0, {S16-S17}
ADD             R0, R4, #0x2C ; ','
VMRS            APSR_nzcv, FPSCR
VSTM            R0, {S20-S21}
VSTRLE          S3, [R4,#0x10]
VSTRLE          S3, [R4,#0x14]
BLE             loc_1F0970
VMOV.F32        S1, S0
VLDR            S2, [R4,#0x24]
VSUB.F32        S0, S2, S17
VSUB.F32        S1, S1, S16
VMUL.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S4, S2
VDIV.F32        S5, S4, S18
VLDR            S4, =0.5
VCVT.U32.F32    S2, S5
VMOV            R0, S2
BIC             R1, R0, #1
VMOV            S2, R1
TST             R0, #1
VCVT.F32.U32    S2, S2
VMUL.F32        S2, S2, S4
VLDRNE          S4, =1.0
VADDNE.F32      S2, S2, S4
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
VSTREQ          S1, [R4,#0x10]
VSTREQ          S0, [R4,#0x14]
BEQ             loc_1F0970
VDIV.F32        S3, S1, S2
VSTR            S3, [R4,#0x10]
VDIV.F32        S1, S0, S2
VSTR            S1, [R4,#0x14]
LDR             R0, [R4]
MOV             R1, #0
BIC             R0, R0, #0xC
ORR             R0, R0, R6,LSL#3
BIC             R0, R0, #0x10
STRD            R0, R1, [R4]
MOV             R0, #1
VPOP            {D8-D12}
POP             {R4-R8,PC}
