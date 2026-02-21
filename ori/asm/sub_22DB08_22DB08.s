PUSH            {R4,R5,LR}
MOV             R5, R0
LDRB            R0, [R1]
SUB             SP, SP, #0xC
MOV             R4, R1
TST             R0, #1
BEQ             loc_22DC40
TST             R0, #2
BNE             loc_22DC40
TST             R0, #4
BNE             loc_22DB60
TST             R0, #0x10
BEQ             loc_22DB60
VLDR            S0, [R4,#0x38]
VLDR            S1, [R4,#0x44]
VADD.F32        S0, S0, S1
VNEG.F32        S1, S1
VSTR            S0, [R4,#0x38]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R4,#0x38]
VLDR            S0, [R4,#0x24]
VLDR            S2, [R4,#0x38]
LDRSB           R0, [R4,#1]
VLDR            S4, =6.2832
VDIV.F32        S3, S0, S2
VMOV            S2, R0
VLDR            S1, [R4,#0x10]
MOV             R2, R4
MOV             R1, SP
VCVT.F32.S32    S2, S2
VDIV.F32        S0, S4, S3
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#0x10]
VLDR            S1, [R4,#0x14]
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x14]
LDR             R0, [R5]
LDR             R3, [R0,#0x150]
MOV             R0, R5
BLX             R3
LDRB            R0, [R4]
TST             R0, #0x20
BEQ             loc_22DBE8
ADD             R1, R5, #0x108
VLDMEA          SP, {S0-S2}
LDR             R0, [R5]
VLDM            R1, {S3-S5}
LDR             R1, [R0,#0x58]
MOV             R0, R5
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S4
BLX             R1
B               loc_22DBF4
LDMFD           SP, {R0-R2}
ADD             R5, R5, #0x108
STM             R5, {R0-R2}
LDRB            R0, [R4]
TST             R0, #0x14
BNE             loc_22DC40
VLDR            S0, [R4,#0x3C]
VLDR            S1, =0.0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_22DC40
VLDR            S2, [R4,#0x38]
VLDR            S1, [R4,#0x40]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_22DC40
VADD.F32        S0, S2, S0
VSTR            S0, [R4,#0x38]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R4,#0x38]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
