PUSH            {R4,LR}
MOV             R4, R1
LDR             R1, =0x2686
SUB             SP, SP, #0x10
LDRB            R1, [R1,R0]
CMP             R1, #1
BEQ             loc_16A85C
ADD             SP, SP, #0x10
MOV             R1, R4
POP             {R4,LR}
B               sub_22D620
LDR             R3, [R4]
TST             R3, #7
BEQ             loc_16A90C
TST             R3, #8
BNE             loc_16A90C
TST             R3, #0x20
BEQ             loc_16A90C
LDR             R1, =0x2698
VLDR            S0, =0.0
LDRB            R1, [R1,R0]
CMP             R1, #1
CMPNE           R1, #3
LDR             R1, [R4,#0x34]
MOVEQ           R2, #1
MOVNE           R2, #0
CMP             R1, #0
BEQ             loc_16AA00
TST             R3, #0x10
BEQ             loc_16A914
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#0x38]
VCVT.F32.S32    S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16A90C
ADD             R1, R1, #0x108
ADD             R2, R4, #0x2C ; ','
VLDM            R1, {S0-S1}
VLDR            S5, [R4,#0x28]
VLDR            S4, [R1,#8]
VLDM            R2, {S2-S3}
VADD.F32        S0, S0, S5
VADD.F32        S2, S1, S2
VADD.F32        S1, S4, S3
VSTR            S0, [SP,#0x18+var_18]
VSTR            S2, [SP,#0x18+var_14]
VSTR            S1, [SP,#0x18+var_10]
LDR             R1, [R0]
LDR             R2, [R1,#0x120]
MOV             R1, SP
BLX             R2
LDR             R0, [R4]
BIC             R0, R0, #7
STR             R0, [R4]
ADD             SP, SP, #0x10
POP             {R4,PC}
ADD             R1, R1, #0x108
VLDR            S6, [R4,#0x28]
VLDR            S4, [R1,#8]
MOV             R3, #2
VLDM            R1, {S1-S2}
LDR             R1, [R4]
VLDR            S5, [R4,#0x2C]
VLDR            S3, [R4,#0x30]
ORR             R1, R1, #4
BIC             R12, R1, #2
VADD.F32        S1, S1, S6
AND             R1, R3, R1,LSR#1
ORR             R1, R1, R12
BIC             R3, R1, #1
MOV             R1, R1,LSL#30
VADD.F32        S2, S2, S5
ORR             R1, R3, R1,LSR#31
STR             R1, [R4]
VADD.F32        S3, S4, S3
VLDR            S5, [R0,#0x118]
VLDR            S4, [R0,#0x108]
VSUB.F32        S5, S1, S5
VSUB.F32        S4, S1, S4
VMUL.F32        S4, S5, S4
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16A998
VSTR            S1, [R0,#0x108]
LDR             R1, [R4]
CMP             R2, #0
BICNE           R1, R1, #2
BICEQ           R1, R1, #1
STR             R1, [R4]
VLDR            S4, [R0,#0x11C]
VLDR            S1, [R0,#0x10C]
VSUB.F32        S4, S2, S4
VSUB.F32        S1, S2, S1
VMUL.F32        S1, S4, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16A9D0
VSTR            S2, [R0,#0x10C]
LDR             R1, [R4]
CMP             R2, #0
BICNE           R1, R1, #1
BICEQ           R1, R1, #2
STR             R1, [R4]
VLDR            S1, [R0,#0x120]
VLDR            S2, [R0,#0x110]
VSUB.F32        S1, S3, S1
VSUB.F32        S2, S3, S2
VMUL.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16A90C
VSTR            S3, [R0,#0x110]
LDR             R0, [R4]
BIC             R0, R0, #4
B               loc_16A908
TST             R3, #0x10
BEQ             loc_16AA44
VLDR            S0, [R4,#0xC]
VLDR            S1, [R4,#0x38]
VCVT.F32.S32    S0, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16A90C
LDR             R1, [R0]
LDR             R2, [R1,#0x124]
ADD             R1, R4, #0x28 ; '('
BLX             R2
LDR             R0, [R4]
BIC             R0, R0, #7
STR             R0, [R4]
ADD             SP, SP, #0x10
POP             {R4,PC}
VLDR            S2, [R4,#0x28]
VLDR            S5, [R0,#0x118]
VLDR            S4, [R0,#0x108]
VLDR            S1, [R4,#0x2C]
VSUB.F32        S5, S2, S5
VSUB.F32        S4, S2, S4
VLDR            S3, [R4,#0x30]
VMUL.F32        S4, S5, S4
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S5, [R0,#0x11C]
VLDR            S4, [R0,#0x10C]
MOVLS           R12, #1
VSUB.F32        S5, S1, S5
VSUB.F32        S4, S1, S4
MOVHI           R12, #0
VMUL.F32        S4, S5, S4
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
MOVLS           LR, #1
MOVHI           LR, #0
TST             R3, #4
BEQ             loc_16AACC
VLDR            S5, [R0,#0x120]
VLDR            S4, [R0,#0x110]
VSUB.F32        S5, S3, S5
VSUB.F32        S4, S3, S4
VMUL.F32        S4, S5, S4
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16AACC
BIC             R1, R3, #4
STR             R1, [R4]
VSTR            S3, [R0,#0x110]
LDR             R1, [R4]
TST             R1, #1
BEQ             loc_16AB04
TST             R2, LR
BEQ             loc_16AAEC
BIC             R1, R1, #1
STR             R1, [R4]
VSTR            S1, [R0,#0x10C]
BICS            R1, R12, R2
BEQ             loc_16AB04
LDR             R1, [R4]
BIC             R1, R1, #1
STR             R1, [R4]
VSTR            S2, [R0,#0x108]
LDR             R1, [R4]
TST             R1, #2
BEQ             loc_16AB3C
TST             R2, R12
BEQ             loc_16AB24
BIC             R1, R1, #2
STR             R1, [R4]
VSTR            S2, [R0,#0x108]
BICS            R1, LR, R2
BEQ             loc_16AB3C
LDR             R1, [R4]
BIC             R1, R1, #2
STR             R1, [R4]
VSTR            S1, [R0,#0x10C]
LDR             R1, [R4]
AND             R1, R1, #7
CMP             R1, #0
VLDRNE          S2, [R4,#0x44]
VCMPENE.F32     S0, S2
VMRSNE          APSR_nzcv, FPSCR
VMOVGT.F32      S3, S0
VLDRGT          S1, [R4,#0x38]
BLE             loc_16A90C
VADD.F32        S1, S2, S1
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
VADD.F32        S0, S0, S1
BGT             loc_16AB60
VLDR            S1, [R4,#0x28]
VLDR            S6, [R0,#0x108]
ADD             R1, R4, #0x2C ; ','
ADD             R0, R0, #0x10C
VSUB.F32        S1, S1, S6
VLDM            R1, {S2-S3}
VLDM            R0, {S4-S5}
LDR             R0, [R4]
VSUB.F32        S2, S2, S4
VSUB.F32        S3, S3, S5
VMUL.F32        S4, S1, S1
VMLA.F32        S4, S2, S2
VMLA.F32        S4, S3, S3
VSQRT.F32       S1, S4
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRGE           R0, R0, #0x40 ; '@'
BICLT           R0, R0, #0x40 ; '@'
B               loc_16A908
