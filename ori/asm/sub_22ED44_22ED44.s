PUSH            {R4}
CMP             R1, #1
VLDM            R2, {S4-S6}
LDMED           SP, {R4,R12}
BNE             loc_22ED6C
ADD             R1, R0, #0xF0
VLDM            R1, {S0-S2}
VADD.F32        S4, S4, S0
VADD.F32        S5, S5, S1
VADD.F32        S6, S6, S2
VLDR            S2, [R0,#0xF0]
VLDR            S1, [R0,#0xF4]
VLDR            S0, [R0,#0xF8]
LDRB            R1, [R12]
VSUB.F32        S3, S4, S2
VSUB.F32        S2, S5, S1
VSUB.F32        S1, S6, S0
VLDR            S0, =0.0
VCMP.F32        S3, S0
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S7, S2
ORRNE           R1, R1, #1
BICEQ           R1, R1, #1
STRB            R1, [R12]
VCMP.F32        S7, S0
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S7, S1
ORRNE           R1, R1, #2
BICEQ           R1, R1, #2
STRB            R1, [R12]
VCMP.F32        S7, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #4
BICEQ           R1, R1, #4
TST             R1, #7
MOVEQ           R0, #0
STRB            R1, [R12]
BEQ             loc_22EE80
BIC             R1, R1, #0x18
VMOV.F32        S7, S3
MOV             R2, #0
STRB            R1, [R12]
ADD             R0, R0, #0xF0
STR             R2, [R12,#0x38]
ADD             R2, R12, #0x20 ; ' '
VLDM            R0, {S8-S10}
VCMPE.F32       S7, S0
BIC             R1, R1, #0x20 ; ' '
VSTM            R2, {S4-S6}
ADD             R2, R12, #0x14
ORR             R0, R1, R4,LSL#5
VMRS            APSR_nzcv, FPSCR
VSTM            R2, {S8-S10}
VMOV.F32        S5, S2
STRB            R0, [R12]
VLDR            S4, [R3]
ADD             R0, R12, #0x30 ; '0'
VNEGLE.F32      S4, S4
VCMPE.F32       S5, S0
VSTR            S4, [R12,#8]
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S5, S1
VLDR            S4, [R3,#4]
VNEGLE.F32      S4, S4
VCMPE.F32       S5, S0
VSTR            S4, [R12,#0xC]
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R3,#8]
VNEGLE.F32      S0, S0
VSTR            S0, [R12,#0x10]
VABS.F32        S0, S3
VSTR            S3, [R12,#0x2C]
VSTR            S2, [R12,#0x30]
VSTR            S0, [R12,#0x2C]
VABS.F32        S0, S2
VSTM            R0, {S0-S1}
VABS.F32        S0, S1
MOV             R0, #1
VSTR            S0, [R12,#0x34]
POP             {R4}
BX              LR
