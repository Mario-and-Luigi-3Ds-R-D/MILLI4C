VLDM            R2, {S1-S3}
CMP             R1, #1
LDR             R12, [SP,#arg_0]
BNE             loc_22E738
VLDR            S5, [R0,#0xE4]
VLDR            S4, [R0,#0xE8]
VLDR            S0, [R0,#0xEC]
VADD.F32        S1, S1, S5
VADD.F32        S2, S2, S4
VADD.F32        S3, S3, S0
VLDR            S0, [R0,#0xE4]
LDRB            R1, [R12]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #1
BICEQ           R1, R1, #1
STRB            R1, [R12]
VLDR            S0, [R0,#0xE8]
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #2
BICEQ           R1, R1, #2
STRB            R1, [R12]
VLDR            S0, [R0,#0xEC]
VCMP.F32        S3, S0
VMRS            APSR_nzcv, FPSCR
ORRNE           R1, R1, #4
BICEQ           R1, R1, #4
TST             R1, #7
MOVEQ           R0, #0
STRB            R1, [R12]
BEQ             locret_22E8E0
BIC             R1, R1, #0x18
MOV             R2, #0
STRB            R1, [R12]
STR             R2, [R12,#0x2C]
ADD             R2, R0, #0xE4
VLDR            S0, =0.0
TST             R1, #1
VLDM            R2, {S4-S6}
ADD             R2, R12, #0x20 ; ' '
VSTM            R2, {S1-S3}
ADD             R2, R12, #0x14
VSTM            R2, {S4-S6}
VSTREQ          S0, [R12,#8]
BEQ             loc_22E81C
VLDR            S4, [R0,#0xE4]
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BLE             loc_22E7E8
VLDR            S5, [R3]
VCMPE.F32       S5, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_22E804
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_22E814
VLDR            S1, [R3]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22E814
VLDR            S1, [R3]
VNEG.F32        S1, S1
VSTR            S1, [R12,#8]
B               loc_22E81C
LDR             R2, [R3]
STR             R2, [R12,#8]
TST             R1, #2
VSTREQ          S0, [R12,#0xC]
BEQ             loc_22E87C
VLDR            S1, [R0,#0xE8]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_22E848
VLDR            S4, [R3,#4]
VCMPE.F32       S4, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_22E864
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_22E874
VLDR            S1, [R3,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22E874
VLDR            S1, [R3,#4]
VNEG.F32        S1, S1
VSTR            S1, [R12,#0xC]
B               loc_22E87C
LDR             R2, [R3,#4]
STR             R2, [R12,#0xC]
TST             R1, #4
VSTREQ          S0, [R12,#0x10]
BEQ             loc_22E8DC
VLDR            S1, [R0,#0xEC]
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_22E8A8
VLDR            S2, [R3,#8]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_22E8C4
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_22E8D4
VLDR            S1, [R3,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22E8D4
VLDR            S0, [R3,#8]
VNEG.F32        S0, S0
VSTR            S0, [R12,#0x10]
B               loc_22E8DC
LDR             R0, [R3,#8]
STR             R0, [R12,#0x10]
MOV             R0, #1
BX              LR
