PUSH            {R4-R8,LR}
ADD             R5, R1, #0x100
MOV             R4, R1
LDR             R8, =off_6CE970
MOV             R6, R0
VPUSH           {D8}
MOV             R7, R2
LDRH            R1, [R5,#0xA4]
VLDR            S16, =1.0
CMP             R1, #0
BEQ             loc_210734
LDR             R0, [R8]
BL              sub_528EB0
CMP             R0, #0
VLDRNE          S16, [R0,#0x98]
LDRB            R0, [R5,#0xAA]
CMP             R0, #0
VLDRNE          S1, =2.0
BNE             loc_210768
LDR             R0, [R8]
VLDR            S1, =0.0039062
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#0xE2]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VMUL.F32        S1, S0, S1
VLDR            S0, [R4,#0x1A0]
VLDR            S2, =0.0
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_21078C
VLDR            S3, [R4,#0x19C]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_210798
VLDR            S3, [R4,#0x19C]
VADD.F32        S1, S3, S1
VSTR            S1, [R4,#0x19C]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
VLDRNE          S1, [R4,#0x19C]
VCMPENE.F32     S1, S0
VMRSNE          APSR_nzcv, FPSCR
VSTRGT          S0, [R4,#0x19C]
VLDR            S1, [R4,#0x19C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVCS           R0, #0
BCS             loc_2107E0
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R7
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
VPOP            {D8}
POP             {R4-R8,PC}
