PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, [R1]
SUB             SP, SP, #0x5C
MOV             R4, R1
TST             R0, #7
BEQ             loc_2AFA5C
TST             R0, #0x10
ADD             R1, R5, #0x24 ; '$'
BEQ             loc_2AF834
LDR             R0, [R4,#0x2C]
VLDR            S5, [R4,#0x20]
VLDR            S4, [R4,#0x24]
ADD             R0, R0, #0x108
VLDR            S0, [R4,#0x28]
VLDR            S2, [R0]
VLDR            S1, [R0,#4]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S4
VADD.F32        S0, S3, S0
ADD             R1, SP, #0x68+var_58
VSTR            S2, [SP,#0x68+var_18]
VSTR            S1, [SP,#0x68+var_14]
VSTR            S0, [SP,#0x68+var_10]
LDR             R0, [R4]
TST             R0, #8
BEQ             loc_2AF7F8
LDR             R2, [R4,#0x30]
LDR             R3, [R4,#4]
AND             R12, R0, #0x40 ; '@'
STR             R1, [SP,#0x68+var_60]
SUB             R3, R2, R3
AND             R2, R0, #0x20 ; ' '
CMP             R3, #0
MOV             R0, R2,LSR#5
MOV             R2, R12,LSR#6
STMEA           SP, {R0,R2}
LDR             R0, [R5]
MOVLE           R3, #1
ADD             R2, SP, #0x68+var_18
MOV             R1, #0
LDR             R12, [R0,#0x228]
MOV             R0, R5
BLX             R12
LDR             R0, [R5]
ADD             R1, SP, #0x68+var_58
LDR             R2, [R0,#0x234]
MOV             R0, R5
BLX             R2
B               loc_2AFA50
AND             R2, R0, #0x40 ; '@'
STR             R1, [SP,#0x68+var_64]
MOV             R2, R2,LSR#6
STR             R2, [SP,#0x68+var_68]
AND             R1, R0, #0x20 ; ' '
LDR             R0, [R5]
ADD             R2, R4, #0x30 ; '0'
MOV             R3, R1,LSR#5
VLDM            R2, {S0-S3}
ADD             R2, SP, #0x68+var_18
MOV             R1, #0
LDR             R12, [R0,#0x220]
MOV             R0, R5
BLX             R12
B               loc_2AF7E0
VLDR            S6, =0.5
VLDR            S5, =1.0
VLDR            S4, =0.0
TST             R0, #8
BNE             loc_2AF924
TST             R0, #0x80
BEQ             loc_2AF924
VLDR            S0, [R4,#0x30]
VLDR            S1, [R4,#0x3C]
VADD.F32        S0, S0, S1
VNEG.F32        S1, S1
VSTR            S0, [R4,#0x30]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
TST             R0, #1
VMOVEQ.F32      S3, S4
VSTR            S0, [R4,#0x30]
BEQ             loc_2AF88C
VLDR            S1, [R4,#0x20]
VLDR            S2, [R1]
VSUB.F32        S3, S1, S2
TST             R0, #2
VLDRNE          S1, [R4,#0x24]
VLDRNE          S2, [R1,#4]
VSUBNE.F32      S2, S1, S2
VMOVEQ.F32      S2, S4
TST             R0, #4
VLDRNE          S1, [R4,#0x28]
VLDRNE          S7, [R1,#8]
VSUBNE.F32      S1, S1, S7
VMOV.F32        S7, S3
VMOVEQ.F32      S1, S4
VMOV.F32        S8, S2
VMUL.F32        S7, S7, S7
VMLA.F32        S7, S8, S8
VMLA.F32        S7, S1, S1
VSQRT.F32       S8, S7
VDIV.F32        S7, S8, S0
VCVT.U32.F32    S0, S7
VMOV            R2, S0
BIC             R3, R2, #1
VMOV            S0, R3
TST             R2, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S6
VADDNE.F32      S0, S0, S5
VCMP.F32        S0, S4
VMRS            APSR_nzcv, FPSCR
BNE             loc_2AF90C
VSTR            S3, [R4,#8]
VSTR            S2, [R4,#0xC]
VSTR            S1, [R4,#0x10]
B               loc_2AF924
VDIV.F32        S7, S3, S0
VSTR            S7, [R4,#8]
VDIV.F32        S3, S2, S0
VSTR            S3, [R4,#0xC]
VDIV.F32        S2, S1, S0
VSTR            S2, [R4,#0x10]
TST             R0, #1
VMOVEQ.F32      S0, S4
ADD             R2, R5, #0x14000
VLDRNE          S0, [R4,#8]
VLDR            S1, [R2,#0x2CC]
VADD.F32        S0, S1, S0
VSTR            S0, [R2,#0x2CC]
LDR             R0, [R4]
VLDR            S1, [R2,#0x2D0]
TST             R0, #2
VMOVEQ.F32      S0, S4
VLDRNE          S0, [R4,#0xC]
VADD.F32        S0, S1, S0
VSTR            S0, [R2,#0x2D0]
LDR             R0, [R4]
VLDR            S1, [R2,#0x2D4]
TST             R0, #4
VMOVEQ.F32      S0, S4
VLDRNE          S0, [R4,#0x10]
VADD.F32        S0, S1, S0
VSTR            S0, [R2,#0x2D4]
LDR             R0, [R4]
TST             R0, #0x88
BNE             loc_2AFA50
VLDR            S0, [R4,#0x34]
VCMPE.F32       S0, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_2AFA50
VLDR            S2, [R4,#0x30]
VLDR            S1, [R4,#0x38]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_2AFA50
VADD.F32        S0, S2, S0
VSTR            S0, [R4,#0x30]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R4,#0x30]
VLDR            S3, [R4,#0x20]
VLDR            S8, [R1]
VLDR            S2, [R1,#8]
VLDR            S0, [R4,#0x28]
VSUB.F32        S3, S3, S8
VLDR            S1, [R4,#0x24]
VLDR            S7, [R1,#4]
VSUB.F32        S2, S0, S2
VSUB.F32        S1, S1, S7
VMUL.F32        S0, S3, S3
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S7, S0
VLDR            S0, [R4,#0x30]
VDIV.F32        S8, S7, S0
VCVT.U32.F32    S0, S8
VMOV            R0, S0
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S6
VADDNE.F32      S0, S0, S5
VCMP.F32        S0, S4
VMRS            APSR_nzcv, FPSCR
BNE             loc_2AFA38
VSTR            S3, [R4,#8]
ADD             R0, R4, #0xC
VSTM            R0, {S1-S2}
B               loc_2AFA50
VDIV.F32        S4, S3, S0
VSTR            S4, [R4,#8]
VDIV.F32        S3, S1, S0
VSTR            S3, [R4,#0xC]
VDIV.F32        S1, S2, S0
VSTR            S1, [R4,#0x10]
LDR             R0, [R4,#4]
ADD             R0, R0, #1
STR             R0, [R4,#4]
ADD             SP, SP, #0x5C ; '\'
POP             {R4,R5,PC}
