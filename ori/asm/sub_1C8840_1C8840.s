PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S4, =1.5708
VLDR            S2, =40.744
VLDR            S1, =3.1416
MOV             R5, #0
VPUSH           {D8-D9}
LDRB            R0, [R0,#0x3D]
VLDR            S17, =2.0
VLDR            S18, =0.5
VLDR            S16, =0.0
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C8870; jumptable 001C8870 default case, case 0
DCD def_1C8870; jump table for switch statement
VLDR            S0, [R4]; jumptable 001C8870 case 1
VLDR            S1, [R4,#0xC]
VADD.F32        S0, S0, S1
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [R4]
VLDR            S2, [R4,#8]
BLE             loc_1C88DC
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLT             def_1C8870; jumptable 001C8870 default case, case 0
VMOV.F32        S1, S17
VADD.F32        S0, S2, S1
BL              sub_5F63A4
VSTR            S0, [R4]
VSTR            S16, [R4,#0xC]
STRB            R5, [R4,#0x3D]
VPOP            {D8-D9}; jumptable 001C8870 default case, case 0
POP             {R4-R6,PC}
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_1C88BC
VPOP            {D8-D9}
POP             {R4-R6,PC}
VLDR            S0, [R4,#0x24]; jumptable 001C8870 case 2
VLDR            S1, [R4,#0x10]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1C8928
VLDR            S0, [R4,#0xC]
VLDR            S5, [R4,#0x1C]
VLDR            S3, [R4,#0x20]
VADD.F32        S0, S0, S5
VSTR            S0, [R4,#0xC]
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S3
VSTR            S0, [R4,#0xC]
VLDR            S0, [R4,#0x34]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1C8988
VLDR            S3, [R4,#0x14]
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
LDRLS           R0, [R4,#0x30]
STRLS           R0, [R4,#0xC]
BLS             loc_1C8988
VSUB.F32        S1, S1, S0
VSUB.F32        S0, S3, S0
VDIV.F32        S3, S1, S0
VMUL.F32        S0, S3, S4
VMUL.F32        S0, S0, S2
BL              sub_464318
VLDR            S1, [R4,#0x20]
VMUL.F32        S0, S0, S1
VLDR            S1, [R4,#0x30]
VSTR            S0, [R4,#0xC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R4,#0xC]
LDRSB           R0, [R4,#0x3C]
ADD             R1, R4, #0xC
VLDR            S1, [R4]
VMOV            S0, R0
VLDM            R1, {S2-S3}
CMP             R0, #0
VADD.F32        S3, S3, S2
VCVT.F32.S32    S0, S0
VSTR            S3, [R4,#0x10]
VMLA.F32        S1, S2, S0
VSTR            S1, [R4]
VLDR            S0, [R4,#8]
BLE             loc_1C89E4
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             def_1C8870; jumptable 001C8870 default case, case 0
VMOV.F32        S1, S17
BL              sub_5F63A4
VSTR            S0, [R4]
VSTR            S16, [R4,#0xC]
STRB            R5, [R4,#0x3D]
VPOP            {D8-D9}
POP             {R4-R6,PC}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_1C8870; jumptable 001C8870 default case, case 0
B               loc_1C89C8
VLDR            S1, [R4,#0x40]; jumptable 001C8870 case 3
VLDR            S0, [R4,#0xC]
LDRSB           R0, [R4,#0x3C]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOV            S2, R0
VLDR            S3, [R4]
VMOVCC.F32      S0, S1
VMOV.F32        S1, S17
VCVT.F32.S32    S4, S2
VMOV.F32        S2, S1
VMLA.F32        S2, S0, S4
VADD.F32        S0, S3, S2
BL              sub_5F63A4
VLDR            S1, [R4,#0xC]
VLDR            S2, [R4,#0x44]
VSTR            S0, [R4]
VSUB.F32        S0, S1, S2
VSTR            S0, [R4,#0xC]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VSTRLS          S16, [R4,#0xC]
STRBLS          R5, [R4,#0x3D]
VPOP            {D8-D9}
POP             {R4-R6,PC}
VLDR            S0, [R4,#0x10]; jumptable 001C8870 case 4
VLDR            S3, [R4,#0xC]
VADD.F32        S0, S0, S3
VSTR            S0, [R4,#0x10]
VSUB.F32        S3, S0, S18
VMUL.F32        S0, S3, S1
VMUL.F32        S0, S0, S2
BL              sub_464380
VLDR            S1, [R4,#0x14]
VLDR            S2, [R4,#4]
LDR             R0, [R4,#0x10]
VMUL.F32        S1, S0, S1
VLDR            S0, [R4,#8]
CMP             R0, #0x3F800000
VADD.F32        S2, S2, S0
VMLA.F32        S1, S2, S18
VSTR            S1, [R4]
VSTRGE          S0, [R4]
BGE             loc_1C88D0
VPOP            {D8-D9}
POP             {R4-R6,PC}
VLDR            S0, [R4,#0x10]; jumptable 001C8870 case 5
VLDR            S1, [R4,#0xC]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10]
VMUL.F32        S0, S0, S4
VMUL.F32        S0, S0, S2
BL              sub_464380
VLDR            S2, [R4,#0x14]
VLDR            S1, [R4,#4]
LDR             R0, [R4,#0x10]
VMLA.F32        S1, S0, S2
CMP             R0, #0x3F800000
VSTR            S1, [R4]
BLT             def_1C8870; jumptable 001C8870 default case, case 0
LDR             R0, [R4,#8]
STRB            R5, [R4,#0x3D]
STR             R0, [R4]
VPOP            {D8-D9}
POP             {R4-R6,PC}
