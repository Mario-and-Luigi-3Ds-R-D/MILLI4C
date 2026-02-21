PUSH            {R4,LR}
MOV             R4, R1
LDRB            R1, [R0,#0x48]
SUB             SP, SP, #0x10
CMP             R1, #0
BEQ             loc_10E704
LDRH            R1, [R4]
LDRH            R2, [R0,#0xE]
SUB             R1, R1, R2
STRH            R1, [R4]
LDRH            R1, [R4,#2]
LDRH            R2, [R0,#0x10]
SUB             R1, R1, R2
STRH            R1, [R4,#2]
LDRH            R1, [R4,#4]
LDRH            R2, [R0,#0x12]
SUB             R1, R1, R2
STRH            R1, [R4,#4]
LDRB            R1, [R0,#0x49]
CMP             R1, #0
BEQ             loc_10E82C
VLDR            S0, [R0,#0x18]
VMOV            R1, S0
CMP             R1, #0x3F800000
BNE             loc_10E7BC
VLDR            S1, [R0,#0x1C]
VLDR            S0, =0.0
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x20]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E7BC
VLDR            S1, [R0,#0x24]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x28]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E7BC
VLDR            S1, [R0,#0x2C]
VMOV            R1, S1
CMP             R1, #0x3F800000
VLDREQ          S1, [R0,#0x30]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E7BC
VLDR            S1, [R0,#0x34]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x38]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x3C]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_10E7BC
VLDR            S1, [R0,#0x40]
VMOV            R1, S1
CMP             R1, #0x3F800000
VLDREQ          S1, [R0,#0x44]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_10E82C
LDRSH           R1, [R4]
LDRSH           R3, [R4,#4]
LDRSH           R2, [R4,#2]
VMOV            S2, R1
VMOV            S1, R3
VMOV            S0, R2
ADD             R3, SP, #0x18+var_14
MOV             R2, SP
ADD             R1, R0, #0x18
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
MOV             R0, R2
VSTR            S2, [SP,#0x18+var_18]
VSTM            R3, {S0-S1}
BL              sub_1169FC
VLDR            S0, [SP,#0x18+var_18]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4]
VLDR            S0, [SP,#0x18+var_14]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4,#2]
VLDR            S0, [SP,#0x18+var_10]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRH            R0, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4,PC}
