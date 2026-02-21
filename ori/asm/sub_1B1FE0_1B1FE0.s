PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R6, R2
LDR             R8, =0x43B40000
LDR             R9, =0xC3340000
VPUSH           {D8-D10}
VMOV.F32        S16, S1
VMUL.F32        S18, S0, S0
SUB             SP, SP, #0x18
LDR             R0, [R0,#4]
VLDR            S21, =1.4062
VLDR            S19, =360.0
VSUB.F32        S17, S2, S16
LDR             R4, [R0,#0x610]
VLDR            S20, =0.0
MOV             R7, SP
SUB             R10, R8, #0x800000
LDR             R0, [R4,#8]
TST             R0, #0x400
BNE             loc_1B21A4
TST             R0, #1
BEQ             loc_1B21A4
VLDR            S1, [R4,#0x10]
VLDR            S0, [R5,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_1B21C0
VLDR            S1, [R4,#0x14]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_1B21C0
VLDR            S0, [R4,#0x1C]
VLDR            S3, [R5]
VLDR            S1, [R4,#0x28]
VLDR            S2, [R5,#8]
VSUB.F32        S0, S0, S3
MOV             R0, #0
VSUB.F32        S3, S1, S2
VSTR            S0, [SP,#0x50+var_50]
VSTR            S20, [SP,#0x50+var_4C]
VSTR            S3, [SP,#0x50+var_48]
VLDR            S2, [R4,#0x2C]
VLDR            S5, [R5]
VLDR            S1, [R4,#0x38]
VLDR            S4, [R5,#8]
VSUB.F32        S2, S2, S5
VMUL.F32        S0, S0, S0
VSUB.F32        S1, S1, S4
VSTR            S2, [SP,#0x50+var_44]
VMUL.F32        S2, S2, S2
VMLA.F32        S0, S20, S20
VSTR            S20, [SP,#0x50+var_40]
VSTR            S1, [SP,#0x50+var_3C]
VMLA.F32        S2, S20, S20
VMLA.F32        S0, S3, S3
VMLA.F32        S2, S1, S1
VMOV.F32        S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
MOVCC           R0, #1
VCMPE.F32       S18, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_1B21C0
ADD             R0, R0, R0,LSL#1
ADD             R0, R7, R0,LSL#2
VLDR            S0, [R0,#8]
VLDR            S1, [R0]
BL              sub_4645C0
VMUL.F32        S1, S0, S21
VCMPE.F32       S20, S1
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S0, S16
VADDGT.F32      S1, S1, S19
VMOV            R0, S0
CMP             R0, R8
VSUBGE.F32      S0, S0, S19
BGE             loc_1B2108
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S19
BCC             loc_1B2118
VSUB.F32        S0, S1, S0
VMOV            R0, S0
CMP             R9, R0
VADDCC.F32      S0, S0, S19
BCC             loc_1B2148
VMOV            R0, S0
CMP             R0, R10
VSUBGT.F32      S0, S0, S19
VMOV.F32        S2, S17
VCMPE.F32       S2, S20
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B2174
VMOV.F32        S2, S17
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S0, S20
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_1B21A4
B               loc_1B2190
VCMPE.F32       S0, S20
VMRS            APSR_nzcv, FPSCR
BLE             loc_1B21A4
VMOV.F32        S2, S17
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BCS             loc_1B21A4
VSTR            S1, [R6]
ADD             SP, SP, #0x18
MOV             R0, #1
VPOP            {D8-D10}
POP             {R4-R10,PC}
LDR             R0, [R4]
TST             R0, #1
BEQ             loc_1B21C0
ADD             SP, SP, #0x18
MOV             R0, #0
VPOP            {D8-D10}
POP             {R4-R10,PC}
ADD             R4, R4, #0x88
B               loc_1B2024
